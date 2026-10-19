package com.vungle.ads.internal.ui;

import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.util.PathProvider;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.Reader;
import kotlin.Metadata;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: renamed from: com.vungle.ads.internal.ui.c, reason: from Kotlin metadata */
/* JADX INFO: compiled from: HackMraid.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Lcom/vungle/ads/internal/ui/HackMraid;", "", "()V", "apply", "", "pathProvider", "Lcom/vungle/ads/internal/util/PathProvider;", "out", "Ljava/io/PrintWriter;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public final class HackMraid {
    public static final HackMraid INSTANCE = new HackMraid();

    private HackMraid() {
    }

    public final void apply(PathProvider pathProvider, PrintWriter out) {
        Intrinsics.checkNotNullParameter(pathProvider, "pathProvider");
        Intrinsics.checkNotNullParameter(out, "out");
        File file = new File(pathProvider.getJsAssetDir(ConfigManager.INSTANCE.getMraidJsVersion()), "mraid.min.js");
        if (file.exists()) {
            Reader inputStreamReader = new InputStreamReader(new FileInputStream(file), Charsets.b);
            out.println(TextStreamsKt.readText(inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192)));
        }
    }
}
