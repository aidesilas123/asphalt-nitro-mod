package com.hyprmx.android.sdk.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import android.os.Parcelable;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import com.hyprmx.android.sdk.core.w;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class l implements k {
    public String a;
    public String b;

    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.ImageCapturer", f = "ImageCapturer.kt", i = {0, 0}, l = {96}, m = "processActivityResult", n = {"this", "imageCapture"}, s = {"L$0", "L$1"})
    public static final class a extends ContinuationImpl {
        public l a;
        public w b;
        public /* synthetic */ Object c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f4609e;

        public a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.f4609e |= Integer.MIN_VALUE;
            return l.this.a(null, 0, 0, null, null, this);
        }
    }

    public final File a(Context context) throws IOException {
        Intrinsics.checkNotNullParameter(context, "context");
        String str = new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date());
        Intrinsics.checkNotNullExpressionValue(str, "SimpleDateFormat(\"yyyyMMdd_HHmmss\").format(Date())");
        File fileCreateTempFile = File.createTempFile("JPEG_" + str + '_', ".jpg", context.getExternalFilesDir(Environment.DIRECTORY_PICTURES));
        this.a = fileCreateTempFile.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(fileCreateTempFile, "createTempFile(\n      \"J…Path = absolutePath\n    }");
        return fileCreateTempFile;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.overlay.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(android.content.Context r7, int r8, int r9, android.content.Intent r10, com.hyprmx.android.sdk.core.w r11, kotlin.coroutines.Continuation<? super kotlin.v> r12) {
        /*
            r6 = this;
            boolean r0 = r12 instanceof com.hyprmx.android.sdk.overlay.l.a
            if (r0 == 0) goto L13
            r0 = r12
            com.hyprmx.android.sdk.overlay.l$a r0 = (com.hyprmx.android.sdk.overlay.l.a) r0
            int r1 = r0.f4609e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4609e = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.overlay.l$a r0 = new com.hyprmx.android.sdk.overlay.l$a
            r0.<init>(r12)
        L18:
            java.lang.Object r12 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4609e
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            com.hyprmx.android.sdk.core.w r11 = r0.b
            com.hyprmx.android.sdk.overlay.l r7 = r0.a
            kotlin.ResultKt.throwOnFailure(r12)     // Catch: java.lang.Exception -> L2e
            goto L8e
        L2e:
            r7 = move-exception
            goto L9b
        L31:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L39:
            kotlin.ResultKt.throwOnFailure(r12)
            if (r8 == r3) goto L41
            kotlin.v r7 = kotlin.v.a
            return r7
        L41:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            java.lang.String r12 = "processActivityResult REQUEST_IMAGE_CAPTURE returned with result code "
            r8.<init>(r12)
            r8.append(r9)
            java.lang.String r8 = r8.toString()
            com.hyprmx.android.sdk.utility.HyprMXLog.d(r8)
            r8 = -1
            if (r9 == r8) goto L5b
            r11.imageCaptured(r4)
            kotlin.v r7 = kotlin.v.a
            return r7
        L5b:
            if (r10 == 0) goto L6a
            java.lang.String r8 = r10.getDataString()     // Catch: java.lang.Exception -> L2e
            if (r8 != 0) goto L64
            goto L6a
        L64:
            java.lang.String r7 = r10.getDataString()     // Catch: java.lang.Exception -> L2e
            r8 = r6
            goto L93
        L6a:
            java.lang.String r8 = r6.a     // Catch: java.lang.Exception -> L2e
            if (r8 == 0) goto L8d
            r0.a = r6     // Catch: java.lang.Exception -> L2e
            r0.b = r11     // Catch: java.lang.Exception -> L2e
            r0.f4609e = r3     // Catch: java.lang.Exception -> L2e
            kotlinx.coroutines.r r9 = kotlinx.coroutines.Dispatchers.getIO()     // Catch: java.lang.Exception -> L2e
            com.hyprmx.android.sdk.utility.z0 r10 = new com.hyprmx.android.sdk.utility.z0     // Catch: java.lang.Exception -> L2e
            r10.<init>(r7, r8, r4)     // Catch: java.lang.Exception -> L2e
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r9, r10, r0)     // Catch: java.lang.Exception -> L2e
            java.lang.Object r8 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()     // Catch: java.lang.Exception -> L2e
            if (r7 != r8) goto L88
            goto L8a
        L88:
            kotlin.v r7 = kotlin.v.a     // Catch: java.lang.Exception -> L2e
        L8a:
            if (r7 != r1) goto L8d
            return r1
        L8d:
            r7 = r6
        L8e:
            java.lang.String r8 = r7.b     // Catch: java.lang.Exception -> L2e
            r5 = r8
            r8 = r7
            r7 = r5
        L93:
            r8.a = r4     // Catch: java.lang.Exception -> L2e
            r8.b = r4     // Catch: java.lang.Exception -> L2e
            r11.imageCaptured(r7)     // Catch: java.lang.Exception -> L2e
            goto La3
        L9b:
            java.lang.String r8 = "Problem processing activity result."
            com.hyprmx.android.sdk.utility.HyprMXLog.e(r8, r7)
            r11.imageCaptured(r4)
        La3:
            kotlin.v r7 = kotlin.v.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.overlay.l.a(android.content.Context, int, int, android.content.Intent, com.hyprmx.android.sdk.core.w, kotlin.coroutines.d):java.lang.Object");
    }

    @Override // com.hyprmx.android.sdk.overlay.k
    public final void a(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Context context = activity.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(context, "activity.applicationContext");
        Intrinsics.checkNotNullParameter(context, "context");
        ArrayList arrayList = new ArrayList();
        String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
        if (strArr != null) {
            Intrinsics.checkNotNullExpressionValue(strArr, "info.requestedPermissions");
            for (String str : strArr) {
                arrayList.add(str);
            }
        }
        boolean z = !arrayList.contains("android.permission.CAMERA") || ContextCompat.checkSelfPermission(context, "android.permission.CAMERA") == 0;
        Parcelable parcelable = null;
        if (z) {
            Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
            try {
                Context applicationContext = activity.getApplicationContext();
                Intrinsics.checkNotNullExpressionValue(applicationContext, "activity.applicationContext");
                File fileA = a(applicationContext);
                this.a = fileA.getAbsolutePath();
                Uri uriForFile = FileProvider.getUriForFile(activity, activity.getApplicationContext().getPackageName() + ".com.hyprmx.android.hyprmxfileprovider", fileA);
                this.b = uriForFile.toString();
                intent.putExtra("output", uriForFile);
                parcelable = intent;
            } catch (IOException e2) {
                HyprMXLog.e("Unable to create Image File", e2);
            }
        } else {
            HyprMXLog.d("Unable to create camera intent");
        }
        Intent intent2 = new Intent("android.intent.action.GET_CONTENT");
        intent2.addCategory("android.intent.category.OPENABLE");
        intent2.setType("image/*");
        Parcelable[] parcelableArr = parcelable != null ? new Intent[]{parcelable} : new Intent[0];
        Intent intent3 = new Intent("android.intent.action.CHOOSER");
        intent3.putExtra("android.intent.extra.INTENT", intent2);
        intent3.putExtra("android.intent.extra.TITLE", "Image Chooser");
        intent3.putExtra("android.intent.extra.INITIAL_INTENTS", parcelableArr);
        activity.startActivityForResult(intent3, 1);
    }
}
