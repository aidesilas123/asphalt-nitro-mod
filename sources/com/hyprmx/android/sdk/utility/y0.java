package com.hyprmx.android.sdk.utility;

import android.content.ContentValues;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.MediaStore;
import java.io.File;
import java.io.OutputStream;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.utility.UtilsKt$addToGalleryQandAbove$2", f = "Utils.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
public final class y0 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Object>, Object> {
    public final /* synthetic */ String a;
    public final /* synthetic */ Context b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y0(Context context, String str, Continuation continuation) {
        super(2, continuation);
        this.a = str;
        this.b = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new y0(this.b, this.a, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Object> continuation) {
        return ((y0) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Bitmap.CompressFormat compressFormat;
        String str;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        try {
            if (StringsKt__StringsJVMKt.equals(FilesKt__UtilsKt.getExtension(new File(this.a)), "png", true)) {
                compressFormat = Bitmap.CompressFormat.PNG;
                str = "image/png";
            } else {
                compressFormat = Bitmap.CompressFormat.JPEG;
                str = "image/jpeg";
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("_display_name", this.a);
            contentValues.put("mime_type", str);
            contentValues.put("relative_path", "Pictures/");
            contentValues.put("is_pending", Boxing.boxInt(1));
            Uri uriInsert = this.b.getContentResolver().insert(MediaStore.Images.Media.getContentUri("external_primary"), contentValues);
            if (uriInsert == null) {
                return null;
            }
            Context context = this.b;
            String str2 = this.a;
            OutputStream outputStreamOpenOutputStream = context.getContentResolver().openOutputStream(uriInsert);
            try {
                BitmapFactory.decodeFile(str2).compress(compressFormat, 100, outputStreamOpenOutputStream);
                CloseableKt.closeFinally(outputStreamOpenOutputStream, null);
                contentValues.clear();
                contentValues.put("is_pending", Boxing.boxInt(0));
                return Boxing.boxInt(context.getContentResolver().update(uriInsert, contentValues, null, null));
            } finally {
            }
        } catch (Exception e2) {
            HyprMXLog.e("Exception when trying to store a picture (Q and Above)", e2);
            return kotlin.v.a;
        }
    }
}
