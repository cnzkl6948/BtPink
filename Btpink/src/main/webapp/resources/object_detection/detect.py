import numpy as np
import os
import six.moves.urllib as urllib
import sys
import tensorflow as tf
import socket

from stat import *
from collections import defaultdict
from io import StringIO
from matplotlib import pyplot as plt
from PIL import Image
from utils import label_map_util
from utils import visualization_utils as vis_util
sys.path.append("..")


def load_image_into_numpy_array(image):
  (im_width, im_height) = image.size
  return np.array(image.getdata()).reshape((im_height*1, im_width*1, 3)).astype(np.uint8)
  
# 모델종류 선택.
#MODEL_NAME = 'ssd_mobilenet_v1_coco_11_06_2017'
#MODEL_NAME = 'ssd_inception_v2_coco_11_06_2017'
MODEL_NAME = 'rfcn_resnet101_coco_11_06_2017'
#MODEL_NAME = 'faster_rcnn_resnet101_coco_11_06_2017'

#MODEL_NAME = 'faster_rcnn_inception_resnet_v2_atrous_coco_11_06_2017'

# frozen detection graph. 경로 설정
PATH_TO_CKPT = 'models/' + MODEL_NAME + '/frozen_inference_graph.pb'
 
# List of the strings that is used to add correct label for each box.
PATH_TO_LABELS = os.path.join('data', 'mscoco_label_map.pbtxt')

NUM_CLASSES = 200
detection_graph = tf.Graph()
with detection_graph.as_default():
    od_graph_def = tf.GraphDef()
    with tf.gfile.GFile(PATH_TO_CKPT, 'rb') as fid:
        serialized_graph = fid.read()
        od_graph_def.ParseFromString(serialized_graph)
        tf.import_graph_def(od_graph_def, name='')
        
label_map = label_map_util.load_labelmap(PATH_TO_LABELS)
categories = label_map_util.convert_label_map_to_categories(label_map, max_num_classes=NUM_CLASSES, use_display_name=True)
category_index = label_map_util.create_category_index(categories)
 
# If you want to test the code with your images, just add path to the images to the TEST_IMAGE_PATHS.
PATH_TO_TEST_IMAGES_DIR = 'image'

HOST = "localhost"
PORT = 5882

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

try:
    s.bind((HOST, PORT))
except socket.error as err:
    print('bind ERROR')
    
while(True):
    
    s.listen(10)
    print('Socket Listening')
    conn, addr = s.accept()
    
    data = conn.recv(1024)
    
    filename = str(data)[2:-1]
    print(filename)
    
    IMAGE_PATHS = os.path.join(PATH_TO_TEST_IMAGES_DIR, filename)
    IMAGE_SIZE = (24, 16)
            
    cnt = 0
    with detection_graph.as_default():
      with tf.Session(graph=detection_graph) as sess:
          image = Image.open(IMAGE_PATHS).convert('RGB')
          # the array based representation of the image will be used later in order to prepare the
          # result image with boxes and labels on it.
          image_np = load_image_into_numpy_array(image)
          # Expand dimensions since the model expects images to have shape: [1, None, None, 3]
          image_np_expanded = np.expand_dims(image_np, axis=0)
          image_tensor = detection_graph.get_tensor_by_name('image_tensor:0')
          # Each box represents a part of the image where a particular object was detected.
          boxes = detection_graph.get_tensor_by_name('detection_boxes:0')
          # Each score represent how level of confidence for each of the objects.
          # Score is shown on the result image, together with the class label.
          scores = detection_graph.get_tensor_by_name('detection_scores:0')
          classes = detection_graph.get_tensor_by_name('detection_classes:0')
          num_detections = detection_graph.get_tensor_by_name('num_detections:0')
          # 검색 알고리즘
          (boxes, scores, classes, num_detections) = sess.run([boxes, scores, classes, num_detections],feed_dict={image_tensor: image_np_expanded})
          
          
              
          num = len(np.squeeze(scores))
          for i in range(num):
              if (np.squeeze(scores)[i] >= 0.50 and np.squeeze(classes).astype(np.int32)[i] == 1):
                  cnt = cnt + 1
          # 검색결과를 사진에 표시.
          vis_util.visualize_boxes_and_labels_on_image_array(image_np,np.squeeze(boxes), np.squeeze(classes).astype(np.int32),np.squeeze(scores),category_index,use_normalized_coordinates=True,line_thickness=3)
          fig = plt.figure(figsize=IMAGE_SIZE)
          plt.imshow(image_np)      
          fig.savefig('test.jpg')
    print(cnt)
    result = str(cnt)
    conn.send(bytes(result+"\r\n", "UTF-8"))
    
    
