package com.nearme.platform.opensdk.pay;

import android.text.TextUtils;
import android.util.Log;
import com.json.d1;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.o2;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class PayResponse {
    public int a;
    public String b;
    public String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f7691d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f7692e;

    private static String a(int i) {
        if (i == 1007) {
            return "版本无更新";
        }
        if (i == 1010) {
            return "支付失败";
        }
        if (i == 1012) {
            return "正在处理中";
        }
        if (i == 1100 || i == 5555) {
            return "支付失败";
        }
        if (i == 1200) {
            return "签名错误";
        }
        if (i == 1201) {
            return "缺少参数";
        }
        switch (i) {
            case 1001:
                return "成功";
            case 1002:
                return "订单号重复";
            case 1003:
                return "超过最大限额";
            case 1004:
                return "取消";
            case 1005:
                return "结果未知";
            default:
                switch (i) {
                    case 5000:
                        return "金额错误";
                    case IronSourceConstants.errorCode_biddingDataException /* 5001 */:
                        return "系统错误";
                    case IronSourceConstants.errorCode_isReadyException /* 5002 */:
                        return "余额不足";
                    case IronSourceConstants.errorCode_loadInProgress /* 5003 */:
                        return "参数异常";
                    case IronSourceConstants.errorCode_showInProgress /* 5004 */:
                        return "用户不存在";
                    case IronSourceConstants.errorCode_loadException /* 5005 */:
                        return "登录鉴权失败";
                    case IronSourceConstants.errorCode_showFailed /* 5006 */:
                        return "商户订单号重复";
                    default:
                        switch (i) {
                            case 30000:
                            case AD_PUBLISHER_MISMATCH_VALUE:
                                return "查询余额失败";
                            case AD_INTERNAL_INTEGRATION_ERROR_VALUE:
                                return "查询余额结果未知";
                            default:
                                switch (i) {
                                    case 40000:
                                        return "直接付款成功";
                                    case 40001:
                                        return "直接付款失败";
                                    case 40002:
                                        return "直接付款结果未知";
                                    default:
                                        switch (i) {
                                            case 50000:
                                                return "查询订单成功";
                                            case 50001:
                                                return "查询订单失败";
                                            case 50002:
                                                return "查询订单结果未知";
                                            default:
                                                return "未知结果";
                                        }
                                }
                        }
                }
        }
    }

    public static PayResponse parse(String str) {
        if (str == null || str.trim().equals("")) {
            return null;
        }
        PayResponse payResponse = new PayResponse();
        try {
            JSONObject jSONObject = new JSONObject(str);
            int i = jSONObject.getInt(o2.h.f6489g);
            payResponse.a = i;
            payResponse.b = a(i);
            if (jSONObject.has(d1.t)) {
                payResponse.f7691d = jSONObject.getString(d1.t);
            }
            if (jSONObject.has("payChannel")) {
                payResponse.f7692e = jSONObject.getString("payChannel");
            }
            if (jSONObject.has("msg")) {
                payResponse.c = jSONObject.getString("msg");
            }
            if (TextUtils.isEmpty(payResponse.b) || payResponse.b.equals("未知结果")) {
                payResponse.b = jSONObject.getString("msg");
            }
        } catch (Exception unused) {
            Log.i(PayResponse.class.getSimpleName(), "parse error. response is " + str);
        }
        return payResponse;
    }
}
