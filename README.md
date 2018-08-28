# Responsive Image Widths

A command-line tool helping the choice of optimal responsive image widths to put in your `srcset` attribute.

Run `node responsive-image-sizes.js -h`

Steps required to get the image widths list:

## Step 1: get actual contexts (viewports and screen densities) of site visitors

Load data listing page views with actual contexts of site visitors:

- viewport width in `px`
- screen density in `dppx`
- number of page views in this context

Data will be read from a CSV file with comma separator.

## Step 2: get variations of image width across viewport widths

A script running a headless Chrome with [Puppeteer](https://developers.google.com/web/tools/puppeteer/) will get the CSS width of an image on every relevant viewport widths.

## Step 3: compute optimal n widths from both datasets

Computing both datasets will help define optimal widths for the `srcset` attribute of the responsive image.
