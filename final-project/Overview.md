### Day 1
- On the first day of your project, you will be planning your project, choosing a data set, downloading and cleaning it, and storing it in a MySQL database.

Eg, Flight Delays and Cancellations:
- This relational data set can help you practice your SQL joins as well as supervised learning as you attempt to predict which flights will be delayed and by how much time. There are also a variety of ways to explore this data set to determine which airlines are most efficient, what times of day there tends to be the most delays, which cities have more frequent delays than others, and how all this changes over time.

Steps:
* Download file(s) +
* Create a new MySQL database where your data will eventually be stored. +
* Create a new Jupyter Notebook for your project. +
* In the Jupyter Notebook, read the data files using Python. +
* Perform any necessary data wrangling and cleaning using Python. +
* Create a connection to your MySQL database using `pymysql` and `sqlalchemy` and write the clean version of the data to the database. +

Other resources:
Web Scraping as an option to obtain data:
- Choose a website you know well and are conerned about. 
- Use API instead of HTML data if you can.
- [What are some interesting web scraping projects you have done](https://www.quora.com/What-are-some-interesting-web-scraping-projects-you-have-done)
- [Web Scraping: Top 15 Ways To Use It For Business](https://www.agenty.com/docs/blog/39/web-scraping-top-15-ways-to-use-it-for-business)

Other useful ideas:
- [15 Data Visualizations That Will Blow Your Mind](https://blog.udacity.com/2015/01/15-data-visualizations-will-blow-mind.html)
- [80 Data Visualization Examples Using Location Data and Maps](https://carto.com/blog/eighty-data-visualizations-examples-using-location-data-maps/)
-[24 Ultimate Data Science Projects To Boost Your Knowledge and Skills](https://www.analyticsvidhya.com/blog/2018/05/24-ultimate-data-science-projects-to-boost-your-knowledge-and-skills/)
- [What are some good data science projects?](https://www.quora.com/What-are-some-good-data-science-projects)

### Day 2
* In your Jupyter Notebook, read the clean data from your MySQL database. +
* Using Pandas, generate summaries of the data and calculate descriptive statistics. +
* Practice generating a few basic charts and graphs using `matplotlib` or `seaborn` as well.
* Export your clean data set to a CSV file.
* Open Tableau Public and load the CSV file.
* Explore the data in Tableau and look for interesting insights.
* Put together an annotated Tableau Story communicating the insights you have discovered.

### Day 3
* If you are planning on doing supervised machine learning, identify the target variable you would like to train a model to predict. Also determine whether you will be doing regression (target variable is continuous) or classification (target variable is discrete).
* Perform feature selection/engineering to arrive at the features you feel best represent the problem you are trying to solve. During this stage, you may need to normalize or scale your variables.
* Train a couple machine learning models on the data.
* Evaluate the performance of the models.
* Prepare a presentation of your findings and results.

### Day 4
* Continue iterating on your machine learning models with the objective of optimizing their performance.
* Organize your machine learning steps into a pipeline that performs feature selection/engineering, model training, model evaluation, and model storage.
* Further refine your presentation based on additional findings and results.
* If you have time, you may also go back and perform additional data exploration and analysis.

### Necessary Deliverables
A [Final Project Template](final-project-template.md) has been prepared for you to document and report your final project. You can use the structure in that template to prepare your report or presentation. But you are not limited to the Markdown file format in turning in your report as long as you follow the structure prescribed in the template.

The following deliverables should be pushed to your Github repo.

* A Jupyter Notebook (.ipynb) file containing all your Python code.
* A data folder containing your original data set and your clean data set in CSV format.
* Your final project report/presentation created from template.

### Outputs
* A presentation in [slides.com](https://slides.com/)
    * Presentation Time: 12 minutes
    * Q & A: 3 minutes
* A demo deployed on GitHub Pages
* The presentation and demo will be executed on a class computer (instead of your own)
* Get ready to explain some of your code in GitHub
