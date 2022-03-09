<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<table class="table">
	<thead>
		<tr>
			<th scope="col">製品</th>
			<th scope="col">タイトル</th>
			<th scope="col">価格</th>
			<th scope="col">製品を追加</th>
			<th scope="col">製品を比較</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th scope="row"><img alt=""
				src="https://m.media-amazon.com/images/I/41OrmlW4ItL._SL75_.jpg"></th>
			<td><div class="row fw-bold fs-5 mx-2 mb-2">Intel Core
					i9-10980XE、18コアおよび16スレッドターボロック解除Xシリーズデスクトッププロセッサ</div>
				<div class="row">
					<div class="col"><span class="fw-bold">ブランド：</span>AMD</div>
					<div class="col"><span class="fw-bold">モデル：</span>Ryzen Threadripper 3990X</div>
				</div>
				<div class="row">
					<div class="col"><span class="fw-bold">コア：</span>64</div>
					<div class="col"><span class="fw-bold">スレッド：</span>128</div>
					<div class="col"><span class="fw-bold">ソケットタイプ：</span>sTRX4</div>
				</div>
				<div class="row">
					<div class="col"><span class="fw-bold">基本速度：</span>2.9 GHz</div>
					<div class="col"><span class="fw-bold">ターボスピード：</span>4.3 GHz</div>
				</div></td>
			<td>$1,059.99</td>
			<td><a
				href="${pageContext.request.contextPath}/views/gaming_pc/pc_builder/add_product.jsp"
				type="button" class="btn btn-primary">追加</a></td>
			<td><a
				href="${pageContext.request.contextPath}/views/compare/compare_1.jsp"
				type="button" class="btn btn-primary">比較</a></td>
		</tr>
		<tr>
			<th scope="row"><img alt=""
				src="https://m.media-amazon.com/images/I/41rLUI4FOAL._SL75_.jpg"></th>
			<td>AMD Ryzen 9 3900X 12コア、24スレッドロック解除デスクトッププロセッサー、Wraith
				PrismLEDクーラー付き</td>
			<td>$523.01</td>
			<td><a
				href="${pageContext.request.contextPath}/views/gaming_pc/pc_builder/add_product.jsp"
				type="button" class="btn btn-primary">追加</a></td>
			<td><a
				href="${pageContext.request.contextPath}/views/compare/compare_1.jsp"
				type="button" class="btn btn-primary">比較</a></td>
		</tr>
		<tr>
			<th scope="row"><img alt=""
				src="https://m.media-amazon.com/images/I/41MI611RvgL._SL75_.jpg"></th>
			<td>Intel
				Corei9-10900Kデスクトッププロセッサ最大5.3GHzの10コアロック解除されたLGA1200（Intel
				400シリーズチップセット）125W</td>
			<td>$478.08</td>
			<td><a
				href="${pageContext.request.contextPath}/views/gaming_pc/pc_builder/add_product.jsp"
				type="button" class="btn btn-primary">追加</a></td>
			<td><a
				href="${pageContext.request.contextPath}/views/compare/compare_1.jsp"
				type="button" class="btn btn-primary">比較</a></td>
		</tr>
	</tbody>
</table>