# 📊 Instagram Engagement Performance Dashboard

## 📌 Overview

This project analyzes Instagram post performance to uncover insights into **audience engagement**, **content effectiveness**, and **growth trends**.

An interactive Power BI dashboard was built using real-world social media metrics to help understand what type of content performs best.


## 🎯 Objectives

* Analyze engagement across different post types (Image, Video, Reel, Story)
* Identify factors influencing engagement (captions, hashtags, followers)
* Track performance trends over time
* Build an interactive and insightful Power BI dashboard


## 📂 Dataset Description

The dataset contains the following fields:

 Column Name     Description                              
 
 Post_ID         Unique identifier for each post          
 Post_Date       Date of the post                         
 Post_Type       Type of post (Image, Video, Reel, Story) 
 Caption_Length  Number of words in caption               
 Hashtags_Used   Number of hashtags used                  
 Likes           Total likes                              
 Comments        Total comments                           
 Shares          Total shares                             
 Saves           Total saves                              
 Reach           Unique users reached                     
 Impressions     Total views (including repeats)          
 Follower_Count  Followers at time of posting             


## 🧹 Data Preparation

* Removed null and duplicate values
* Converted `Post_Date` into **Month-Year format**
* Created calculated columns and measures using DAX


## 📊 Dashboard Features

### 🔹 KPI Cards

* Total Reach
* Total Impressions
* Engagement Rate
* Interaction Ratio

### 📈 Trend Analysis

* Monthly trends of:

  * Reach
  * Impressions
  * Engagement Rate

### 🥇 Top Performing Posts

* Top 5 posts based on Engagement Rate

### 📊 Post Type Comparison

* Average engagement across:

  * Image
  * Video
  * Reel
  * Story

### 🔗 Correlation Analysis

* Relationship between:

  * Follower Count
  * Engagement Rate

### 🎛 Filters / Slicers

* Month
* Post Type


## 💡 Key Insights

* 📌 **Reels generate the highest reach**, making them ideal for audience growth
* 📌 **Image posts deliver consistent engagement**
* 📌 **Higher caption length often improves engagement**
* 📌 **Optimal hashtag range is between 10–20**
* 📌 **Saves and shares indicate high-value content**
* 📌 Engagement is **not solely dependent on follower count**



## 📌 Future Improvements

* Add sentiment analysis on captions
* Include time-of-day posting analysis
* Predict engagement using machine learning




