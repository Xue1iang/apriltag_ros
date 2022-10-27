# see https:#github.com/AprilRobotics/apriltag/blob/master/apriltag.h
# for the definition of the raw data for an apriltag detection

# Unlike ApriltagDetection.msg which provides results for tags and tag bundles,
# This message just represents the raw data provided by the apriltag library
# for every tag detected in an image see https://github.com/AprilRobotics/apriltag/blob/master/apriltag.h

# The decoded ID of the tag
int32 id

# How many error bits were corrected? Note: accepting large numbers of
# corrected errors leads to greatly increased false positive rates.
# NOTE: As of this implementation, the detector cannot detect tags with
# a hamming distance greater than 2.
int8 hamming

# A measure of the quality of the binary decoding process: the
# average difference between the intensity of a data bit versus
# the decision threshold. Higher numbers roughly indicate better
# decodes. This is a reasonable measure of detection accuracy
# only for very small tags-- not effective for larger tags (where
# we could have sampled anywhere within a bit cell and still
# gotten a good detection.)
float32 decision_margin

# The center of the detection in image pixel coordinates.
geometry_msgs/Point centre

# The corners of the tag in image pixel coordinates. These always
# wrap counter-clock wise around the tag.
AprilTagCorners corners
