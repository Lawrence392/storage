<#import "../macros.ftl" as mymacro>

<@mymacro.head content="mymacro"/>


<#--  links  -->
  <link rel="stylesheet" href="/css/calculator.css">


<@mymacro.connect/>
<#--  body  -->
    <h1>热量计算器</h1>
    <form>
      <div class="form-group">
        <label for="food-type">水果种类</label>
        <input type="text" id="food-type" name="food-type" required>
      </div>
      <div class="form-group">
        <label for="food-weight">重量(克)</label>
        <input type="number" id="food-weight" name="food-weight" min="1" required>
      </div>
      <div class="form-group">
        <button type="button" onclick="calculateCalories()">计算</button>
      </div>
      <div class="form-group">
        <label for="calories">热量(卡)</label>
        <output id="calories" value = "200">200</output>
      </div>

    </form>


<@mymacro.foot/>





