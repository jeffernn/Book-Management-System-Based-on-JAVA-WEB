<!DOCTYPE html>
<html lang="zh-CN">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>用户须知</title>
    <style>
        .page {
            display: none;
        }
        .page.active {
            display: block;
        }
        .pagination {
            margin-top: 20px;
        }
        .pagination button {
            margin-right: 10px;
        }
        <style type="text/css">
                              body,td,th {
                                  color: #09F;
                              }
        table {
            width: 50%;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.5); /* 白色，50%透明度 */
        }
        th, td {
            padding: 10px;
            border: 1px solid #000;
        }
        th {
            background-color: rgba(255, 255, 255, 0.7); /* 白色，70%透明度 */
        }
        td {
            background-color: rgba(255, 255, 255, 0.7); /* 白色，70%透明度 */
        }

        .color{
            color:#FFF
        }
        body {
            background-image: url('img/backgroud.jpg'); /* 替换为你的图片路径 */
            background-repeat: repeat; /* 设置为拉伸 */
            background-size: cover; /* 保持图片原始大小 */
            margin: 0; /* 去除默认的body边距 */
        }
        .page-content {
            margin-top: 20px;
        }
        .pagination {
            margin-top: 20px;
        }
        .pagination button {
            margin-right: 5px;
        }
        /* 按钮基本样式 */
        .btn {
            display: inline-block;
            padding: 10px 20px;
            font-size: 25px;
            font-weight: bold;
            text-align: center;
            text-decoration: none;
            color: #ffffff;
            background-color: #007BFF;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        /* 按钮悬停效果 */
        .btn:hover {
            background-color: #0056b3;
        }

        /* 按钮点击效果 */
        .btn:active {
            background-color: #004080;
        }

        /* 按钮禁用状态 */
        .btn:disabled {
            background-color: #cccccc;
            cursor: not-allowed;
        }
    </style>
    </style>
</head>
<body>

<div class="pagination">
    <center>
        <button onclick="showPage(1)" class="btn">用户须知</button>
        <button onclick="showPage(2)" class="btn">用户手册</button>
    </center>
</div>
<div id="page1" class="page active">
    <center><h1>用户须知</h1></center>
    <center> <p>图书馆管理系统用户须知
        欢迎使用图书馆管理系统！为了确保您能够顺利使用本系统，并维护良好的借阅秩序，请仔细阅读以下用户须知：
        一、借阅规则
        借阅权限：
        学生：最多可借阅5本书，借期30天。
        教职工：最多可借阅10本书，借期60天。
        续借规则：
        每本书可续借一次，续借期限为原借期的一半。
        续借需在借阅到期前7天内申请。
        逾期处理：
        逾期未归还书籍将按每天0.5元收取滞纳金。
        逾期超过30天，系统将暂停借阅权限。
        二、图书查询与预约
        图书查询：
        可通过书名、作者、ISBN号等关键词查询图书。
        查询结果显示图书的馆藏状态（可借、已借、预约中）。
        图书预约：
        当图书已被借出时，可预约该书。
        预约成功后，系统将在图书归还后通知您。
        三、个人信息管理
        修改信息：
        用户可修改个人联系方式、密码等信息。
        姓名、证件号等关键信息需联系管理员修改。
        借阅记录：
        可查看当前借阅、历史借阅及逾期记录。
        四、注意事项
        爱护图书：
        请勿在图书上涂写、折叠或损坏。
        如有损坏或遗失，需按图书馆规定赔偿。
        遵守秩序：
        请勿恶意占用图书资源。
        遵守图书馆的开放时间及管理规定。
        六、联系方式
        图书馆服务热线：123-456-7890
        邮箱：jf,lwh.llb@example.com容。</p></center>
</div>
<div id="page2" class="page">
    <center><h1>用户手册</h1></center>
    <center><p>图书馆管理系统用户守则
        为维护图书馆的正常秩序，保障全体用户的权益，请您在使用图书馆管理系统时严格遵守以下守则：
        一、用户行为规范
        注册与登录：
        用户需使用真实信息注册账号，不得冒用他人身份。
        登录后请妥善保管账号和密码，不得将账号借予他人使用。
        借阅行为：
        借阅图书时，请仔细检查图书的完好性，如有损坏应及时告知管理员。
        借阅期间，请妥善保管图书，避免遗失或损坏。
        归还与续借：
        请按时归还图书，避免逾期。
        续借需在规定时间内申请，不得恶意占用图书资源。
        预约与查询：
        预约图书后，请及时领取，逾期未领取将取消预约资格。
        查询图书时，请勿频繁刷新或恶意占用系统资源。
        二、爱护图书与设施
        图书保护：
        请勿在图书上涂写、折叠、撕毁或进行其他损坏行为。
        如有遗失或严重损坏，需按图书馆规定赔偿。
        设施保护：
        请爱护图书馆的设备和设施，不得随意移动或损坏。
        使用电子设备时，请遵守相关规定，避免干扰他人。
        三、遵守秩序与礼仪
        安静阅读：
        请保持图书馆内安静，避免大声喧哗或接打电话。
        使用电子设备时，请佩戴耳机，避免外放声音。
        文明借阅：
        请自觉排队，遵守借阅流程，不得插队或扰乱秩序。
        尊重工作人员和其他读者，礼貌沟通。
        四、违规处理
        违规行为：
        包括但不限于恶意占用图书、损坏图书、扰乱秩序等行为。
        处理措施：
        首次违规：警告并记录。
        再次违规：暂停借阅权限1个月。
        严重违规：永久取消借阅资格，并追究相关责任。
        五、其他注意事项
        开放时间：
        请在图书馆开放时间内使用系统，非开放时间无法借阅或归还图书。
        安全使用：
        请勿在系统中输入个人敏感信息，避免账号被盗用。
        如发现系统异常，请及时联系管理员。</p></center>
</div>

<script>
    function showPage(pageNumber) {
        // 隐藏所有页面
        document.querySelectorAll('.page').forEach(page => {
            page.classList.remove('active');
        });

        // 显示指定页面
        document.getElementById(`page${pageNumber}`).classList.add('active');
    }
</script>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>

<center mm_ta_src="color">
    <strong>© 软件工程5班 纪凡 刘文浩 林联彪</strong>
</center>
</body>
</html>