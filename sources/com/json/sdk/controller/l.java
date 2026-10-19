package com.json.sdk.controller;

import com.json.h6;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0002\u0003\u0004J\b\u0010\u0003\u001a\u00020\u0002H&¨\u0006\u0005"}, d2 = {"Lcom/ironsource/sdk/controller/l;", "", "", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "mediationsdk_release"}, mv = {1, 8, 0})
public interface l {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\f\u0018\u00002\u00020\u0001B5\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0004¨\u0006\u000e"}, d2 = {"Lcom/ironsource/sdk/controller/l$a;", "Lcom/ironsource/sdk/controller/l;", "", "a", "Ljava/lang/String;", "funToCall", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "parameters", "c", "onSuccessCallback", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "onFailCallback", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "mediationsdk_release"}, mv = {1, 8, 0})
    public static final class a implements l {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final String funToCall;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata */
        private final String parameters;

        /* JADX INFO: renamed from: c, reason: from kotlin metadata */
        private final String onSuccessCallback;

        /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
        private final String onFailCallback;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public a(String funToCall) {
            this(funToCall, null, null, null, 14, null);
            Intrinsics.checkNotNullParameter(funToCall, "funToCall");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public a(String funToCall, String str) {
            this(funToCall, str, null, null, 12, null);
            Intrinsics.checkNotNullParameter(funToCall, "funToCall");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public a(String funToCall, String str, String str2) {
            this(funToCall, str, str2, null, 8, null);
            Intrinsics.checkNotNullParameter(funToCall, "funToCall");
        }

        public a(String funToCall, String str, String str2, String str3) {
            Intrinsics.checkNotNullParameter(funToCall, "funToCall");
            this.funToCall = funToCall;
            this.parameters = str;
            this.onSuccessCallback = str2;
            this.onFailCallback = str3;
        }

        public /* synthetic */ a(String str, String str2, String str3, String str4, int i, n nVar) {
            this(str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4);
        }

        @Override // com.json.sdk.controller.l
        public String a() {
            StringBuilder sb = new StringBuilder();
            sb.append("SSA_CORE.SDKController.runFunction('" + this.funToCall);
            String str = this.parameters;
            if (!(str == null || str.length() == 0)) {
                sb.append("?parameters=" + this.parameters);
            }
            String str2 = this.onSuccessCallback;
            if (!(str2 == null || str2.length() == 0)) {
                sb.append("','" + this.onSuccessCallback);
            }
            String str3 = this.onFailCallback;
            if (!(str3 == null || str3.length() == 0)) {
                sb.append("','" + this.onFailCallback);
            }
            sb.append("');");
            String string = sb.toString();
            Intrinsics.checkNotNullExpressionValue(string, "StringBuilder().apply(builderAction).toString()");
            return string;
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0019\b\u0016\u0012\u0006\u0010\n\u001a\u00020\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u000b\u0010\fB\u0019\b\u0016\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u000b\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0016\u0010\u0006\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0005R\u0016\u0010\t\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000e"}, d2 = {"Lcom/ironsource/sdk/controller/l$b;", "Lcom/ironsource/sdk/controller/l;", "", "a", "", "I", o2.d.c, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "script", "jsMethod", "<init>", "(Lcom/ironsource/sdk/controller/l;I)V", "(Ljava/lang/String;I)V", "mediationsdk_release"}, mv = {1, 8, 0})
    public static final class b implements l {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private int debugMode;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata */
        private String script;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public b(l jsMethod, int i) {
            this(jsMethod.a(), i);
            Intrinsics.checkNotNullParameter(jsMethod, "jsMethod");
        }

        public b(String script, int i) {
            Intrinsics.checkNotNullParameter(script, "script");
            this.script = script;
            this.debugMode = i;
        }

        @Override // com.json.sdk.controller.l
        public String a() {
            String str = "try{" + this.script + "}catch(e){" + ((this.debugMode != h6.d.MODE_0.a() && (this.debugMode < h6.d.MODE_1.a() || this.debugMode > h6.d.MODE_3.a())) ? "empty" : "console.log(\"JS exception: \" + JSON.stringify(e));") + "}";
            Intrinsics.checkNotNullExpressionValue(str, "StringBuilder()\n        …              .toString()");
            return str;
        }
    }

    String a();
}
