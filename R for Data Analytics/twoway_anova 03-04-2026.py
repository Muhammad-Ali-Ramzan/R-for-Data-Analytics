import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

from statsmodels.formula.api import ols
from statsmodels.stats.anova import anova_lm


from statsmodels.graphics.factorplots import interaction_plot
import matplotlib.pyplot as plt




# **1 Teaching Methods (Education)

method = ["Lecture"]*5 + ["Online"]*5 + ["Blended"]*5
scores = [60,65,70,62,68,72,75,78,74,77,80,82,85,83,88]
#df=data.frame(method,scores)
df1=pd.DataFrame({"method": method, "scores":scores})
#boxplot(scores~method, data=df)
sns.boxplot(x="method", y = "scores", data =df1)
plt.title("Teaching method")
plt.show()

#model=lm(scores~method , data = df)
model = ols ('scores~C(method)',data=df1) .fit()
print(anova_lm(model))

# 2. Machine & Shift
machine = ["A"]*6 + ["B"]*6 + ["C"]*6
shift = ["Day", "Day", "Day", "Night", "Night", "Night"]*3
output = [20,22,21,18,19,20, 25,27,26, 23, 24, 25, 30,32,31,28,29,30]
df2 = pd.DataFrame({"machine": machine, "shift": shift, "output": output})
model2 = ols('output ~ C(machine) * C(shift)', data=df2).fit()
print("--- 2. Machine & Shift ---")
print(anova_lm(model2))
print("\n")

# 3. Campaign & Region
campaign = ["Social"]*6 + ["TV"]*6 + ["Email"]*6
region = ["Urban", "Urban", "Urban", "Rural", "Rural", "Rural"]*3
sales = [200,210,205,180,190,185, 250,260,255,230,240,235, 170,175,180,160,165,170]
df3 = pd.DataFrame({"campaign": campaign, "region": region, "sales": sales})
model3 = ols('sales ~ C(campaign) * C(region)', data=df3).fit()
print("--- 3. Campaign & Region ---")
print(anova_lm(model3))
print("\n")

# 4. Drug Dosage
drug = ["D1"]*6 + ["D2"]*6 + ["D3"]*6
dose = ["Low", "Low", "Low", "High", "High", "High"]*3
recovery = [5,6,7,8,9,10, 6,7,8,9,10,11, 4,5,6,7,8,9]
df4 = pd.DataFrame({"drug": drug, "dose": dose, "recovery": recovery})
model4 = ols('recovery ~ C(drug) * C(dose)', data=df4).fit()
fig(x="drug", y= "recovery", data = df4)
plt.title('Drugs Dosage)

print(anova_lm(model4))
print("\n")

# 5. Store Location
store = ["Supermarket"]*6 + ["Mall"]*6 + ["Online"]*6
location = ["City", "City", "City", "Town", "Town", "Town"]*3
revenue = [500,520,510,480,490,495, 600,620,610,580,590,600, 550,560,570,530,540,545]
df5 = pd.DataFrame({"store": store, "location": location, "revenue": revenue})
model5
