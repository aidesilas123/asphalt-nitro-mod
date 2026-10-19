package io.didomi.drawable;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.InputStream;
import java.net.URL;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: renamed from: io.didomi.sdk.i3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\nB\u0013\b\u0007\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J!\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\t2\u0006\u0010\b\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\n\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\fH\u0000¢\u0006\u0004\b\n\u0010\u000fJ\u0019\u0010\n\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0010\u001a\u00020\u000eH\u0000¢\u0006\u0004\b\n\u0010\u0011\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Lio/didomi/sdk/i3;", "Lio/didomi/sdk/o;", "Lio/didomi/sdk/i3$a;", "Landroid/graphics/Bitmap;", "Lkotlinx/coroutines/CoroutineDispatcher;", "coroutineDispatcher", "<init>", "(Lkotlinx/coroutines/CoroutineDispatcher;)V", "param", "Lio/didomi/sdk/y;", "a", "(Lio/didomi/sdk/i3$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "url", "Ljava/io/InputStream;", "(Ljava/lang/String;)Ljava/io/InputStream;", "inputStream", "(Ljava/io/InputStream;)Landroid/graphics/Bitmap;", "android_release"}, mv = {1, 8, 0})
public final class C1790i3 extends AbstractC1846o<Param, Bitmap> {

    /* JADX INFO: renamed from: io.didomi.sdk.i3$a, reason: from toString */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\r\u0010\u000eR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u000f\u0010\u0007¨\u0006\u0011"}, d2 = {"Lio/didomi/sdk/i3$a;", "", "", "url", "<init>", "(Ljava/lang/String;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class Param {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        private final String url;

        public Param(String url) {
            Intrinsics.checkNotNullParameter(url, "url");
            this.url = url;
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getUrl() {
            return this.url;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Param) && Intrinsics.areEqual(this.url, ((Param) other).url);
        }

        public int hashCode() {
            return this.url.hashCode();
        }

        public String toString() {
            return "Param(url=" + this.url + ')';
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1790i3(CoroutineDispatcher coroutineDispatcher) {
        super(coroutineDispatcher);
        Intrinsics.checkNotNullParameter(coroutineDispatcher, "coroutineDispatcher");
    }

    public final Bitmap a(InputStream inputStream) {
        Intrinsics.checkNotNullParameter(inputStream, "inputStream");
        return BitmapFactory.decodeStream(inputStream);
    }

    public final InputStream a(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        try {
            return new URL(url).openStream();
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
    protected Object a2(Param param, Continuation<? super C1946y<Bitmap>> continuation) {
        if (StringsKt__StringsJVMKt.isBlank(param.getUrl())) {
            return C1946y.INSTANCE.a("Url is empty");
        }
        InputStream inputStreamA = a(param.getUrl());
        if (inputStreamA == null) {
            return C1946y.INSTANCE.a("Unable to load " + param.getUrl());
        }
        Bitmap bitmapA = a(inputStreamA);
        if (bitmapA != null) {
            return C1946y.INSTANCE.a(bitmapA);
        }
        return C1946y.INSTANCE.a("Unable to decode " + param.getUrl());
    }

    @Override // io.didomi.drawable.AbstractC1846o
    public /* bridge */ /* synthetic */ Object a(Param param, Continuation<? super C1946y<? extends Bitmap>> continuation) {
        return a2(param, (Continuation<? super C1946y<Bitmap>>) continuation);
    }
}
