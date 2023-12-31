FROM quay.io/souravkl11/rgnk-v3:latest
RUN git clone https://github.com/ABHIY-BRO/hanna-md /root/hanna
WORKDIR /root/hanna-md
ENV TZ=Asia/Kolkata
RUN yarn install --network-concurrency 1
CMD ["node", "index.js"]
