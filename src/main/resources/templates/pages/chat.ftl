<#import "../macros.ftl" as mymacro>

<@mymacro.head content="chat"/>


<#--  links  -->
<link rel="stylesheet" href="/css/chat.css">


		<script>
			function showHealthData() {
				var data = document.getElementById("health-data");
				data.style.display = "block";
			}
	
			function closeHealthData() {
				var data = document.getElementById("health-data");
				data.style.display = "none";
			}
		</script>

<@mymacro.connect/>
<#--  body  -->

    <div class="container">
		<div class="sidebar">
			<h2>Family</h2>
			<ul>
				<li>
					<div class="avatar icon mami"  onclick="showHealthData()"></div>
					<img src="contact1.png" alt="">
					<div id="health-data" class="health-data">
						<span class="close" onclick="closeHealthData()">&times;</span>
						<h2>健康数据</h2>
						<p>体脂率：25%</p>
						<p>BMI指数：22.5</p>
						<p>慢性病：高血压</p>
						<p>过敏原：花粉、海鲜</p>
						<p>心率：90次/分钟</p>
						<p>			
							相关建议: 
						</p>
						<p>		
							饮食: 要合理搭配，多吃蔬果、粗粮、少油少盐，不暴饮暴食。
						</p>
						<p>	
							睡眠: 建议每晚应保证7-9小时的睡眠时间，保持规律作息。
						</p>
						<p>	
							运动: 每周至少150分钟中等强度运动，或75分钟高强度运动。
						</p>

					</div>
					<span>
						Mom🍎
					</span>
				</li>
				<li>
					<div class="icon dad"></div>

					<img src="contact2.png" alt="">
					dad
				</li>
				<li>
					<div class="icon Lucy"></div>

					<img src="contact3.png" alt="">
					Lucy
				</li>
				<li>
					<div class="icon Marry"></div>

					<img src="contact4.png" alt="">
					Marry🍎
				</li>
			</ul>
		</div>
		<div class="message_view">

			<div class="main">
				<h2>Chat with Mom 🍎</h2>
				<div class="health-info">
					<div class="health-info-item">
						<h3>步数</h3>
						<p>3.2k / 5k</p>
						<div class="progress-bar-container">
							<div class="progress-bar step" style="width: 64%;"></div>
						</div>
					</div>
					<div class="health-info-item">
						<h3>卡路里</h3>
						<p>400 kcal</p>
						<div class="progress-bar-container">
							<div class="progress-bar cal" style="width: 23%;"></div>
						</div>
					</div>
					<div class="health-info-item">
						<h3>睡眠</h3>
						<p>6h + 2h</p>
						<div class="progress-bar-container">
							<div class="progress-bar sleep" style="width: 75%;"></div>
						</div>
					</div>
				</div>

				<span class="timestamp">12:00 PM</span>

				<div class="chat sent">
					<p>步数这么少?</p>
				</div>
				<div class="chat received">
					<p>刚起来呢</p>
				</div>
				<div class="chat sent">
					<p>赶紧出去走走</p>
				</div>
				<div class="chat received">
					<p>知道了~</p>
				</div>
				<!-- 聊天记录显示在这里 -->
			</div>

			<div class="message-input">
				<input type="text" placeholder="Type a message...">
				<button>Send</button>
			</div>

		</div>

	</div>

<@mymacro.foot/>
