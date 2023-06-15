if [ -f ~/rom/out/target/product/beryllium/qassa-*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/beryllium/ && ls qassa-*.zip)"
      rclone copy ~/rom/out/target/product/beryllium/qassa-*.zip ghou8s-ci:beryllium -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/beryllium/ && ls qassa-*.zip) Uploaded Successfully!"
fi
