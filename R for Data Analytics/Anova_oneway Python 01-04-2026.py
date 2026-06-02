    ## Common setup (Run Once)
   
import pandas as pd #data wrangling/cleaning
import seaborn as sns # scientific ploting/modeling
import matplotlib.pyplot as plt # plot = ggplot2

from statsmodels.formula.api import ols
from statsmodels.stats.anova import anova_lm

# **1 Teaching Methods (Education)

method = ["Lecture"]*5 + ["Online"]*5 + ["Blended"]*5
scores = [60,65,70,62,68,72,75,78,74,77,80,82,85,83,88]
#df=data.frame(method,scores)
df=pd.DataFrame({"method": method, "scores":scores})
#boxplot(scores~method, data=df)
sns.boxplot(x="method", y = "scores", data =df )
plt.title("Scores by Method")
plt.show()

#model=lm(scores~method , data = df)
model = ols ('scores~C(method)',data=df) .fit()
print(anova_lm(model))


## 2 Machine Types (Manufacturing)
machine = ["A"]*6 + ["B"]*6 +["C"]*6
output = [20,22,19,23,21,20, 25,27,26,28,29,30, 18,17,19,16,20,18]

df= pd.DataFrame({"machine": machine, "output":output})

sns.boxplot(x= "machine", y = "output", data = df)
plt.title("output by machine")
plt.show()
model = ols ('output~ C(machine)', data=df).fit()
print(anova_lm(model))

## 3 Marketing Campaigns
Campaign = ["Social"]*5 + ["TV"]*5 + ["Email"]*5
sales = [200,210,190,205,198, 250,260,255,270,265, 180,175,190,185,178]

df3=pd.DataFrame({"Campaign": Campaign, "sales":sales})
print(df3.head())
sns.boxplot(x="Campaign",y = "sales", data=df3)
plt.title("Sales By Campaign")
plt.show()
