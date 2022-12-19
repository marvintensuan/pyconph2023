rm -f $(ls | grep "index.slides.html")
jupyter nbconvert --execute index.ipynb --to slides --template=cust \
  --TagRemovePreprocessor.enabled=True --TagRemovePreprocessor.remove_input_tags remove_input
mv $(ls | grep "slides.html") index.html
