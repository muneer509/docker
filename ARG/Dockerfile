# FROM almalinux:9
# ARG Image_Ver="V.3" \
#     Auther="muneer"
# RUN echo "Image_version: $Image_Ver, Auther: $Auther"
# CMD [ "sleep", "1000"]

ARG version
FROM almalinux:{version:-9}
ARG Instruction="ARG"
    course="Docker"
    duration="1hr"
ENV duration=$duration
RUN echp "Course: $course, Duration: $duration, version: $version"
CMD [ "sleep", "1000" ]
