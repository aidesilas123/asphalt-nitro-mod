package com.vungle.ads.internal.load;

import android.util.Log;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.MraidJsError;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.downloader.AssetDownloadListener;
import com.vungle.ads.internal.downloader.DownloadRequest;
import com.vungle.ads.internal.downloader.Downloader;
import com.vungle.ads.internal.util.FileUtility;
import com.vungle.ads.internal.util.PathProvider;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.v;

/* JADX INFO: renamed from: com.vungle.ads.internal.load.h, reason: from Kotlin metadata */
/* JADX INFO: compiled from: MraidJsLoader.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J9\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2!\u0010\u0010\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\u000b0\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/vungle/ads/internal/load/MraidJsLoader;", "", "()V", "MRAID_AVAILABLE", "", "MRAID_DOWNLOADED", "MRAID_DOWNLOAD_FAILED", "MRAID_INVALID_ENDPOINT", "TAG", "", "downloadJs", "", "pathProvider", "Lcom/vungle/ads/internal/util/PathProvider;", "downloader", "Lcom/vungle/ads/internal/downloader/Downloader;", "downloadListener", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "downloadState", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public final class MraidJsLoader {
    public static final MraidJsLoader INSTANCE = new MraidJsLoader();
    public static final int MRAID_AVAILABLE = 13;
    public static final int MRAID_DOWNLOADED = 10;
    public static final int MRAID_DOWNLOAD_FAILED = 12;
    public static final int MRAID_INVALID_ENDPOINT = 11;
    private static final String TAG = "MraidJsLoader";

    /* JADX INFO: renamed from: com.vungle.ads.internal.load.h$a */
    /* JADX INFO: compiled from: MraidJsLoader.kt */
    @Metadata(d1 = {"\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\u000e"}, d2 = {"com/vungle/ads/internal/load/MraidJsLoader$downloadJs$1", "Lcom/vungle/ads/internal/downloader/AssetDownloadListener;", "onError", "", "error", "Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;", "downloadRequest", "Lcom/vungle/ads/internal/downloader/DownloadRequest;", "onProgress", "progress", "Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;", "onSuccess", "file", "Ljava/io/File;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class a implements AssetDownloadListener {
        final /* synthetic */ Function1<Integer, v> $downloadListener;
        final /* synthetic */ File $jsPath;
        final /* synthetic */ File $mraidJsFile;

        /* JADX WARN: Multi-variable type inference failed */
        a(File file, Function1<? super Integer, v> function1, File file2) {
            this.$jsPath = file;
            this.$downloadListener = function1;
            this.$mraidJsFile = file2;
        }

        @Override // com.vungle.ads.internal.downloader.AssetDownloadListener
        public void onError(AssetDownloadListener.a aVar, DownloadRequest downloadRequest) {
            StringBuilder sb = new StringBuilder();
            sb.append("download mraid js error: ");
            sb.append(aVar != null ? Integer.valueOf(aVar.getServerCode()) : null);
            sb.append(':');
            sb.append(aVar != null ? aVar.getCause() : null);
            String string = sb.toString();
            Log.d(MraidJsLoader.TAG, string);
            new MraidJsError(string).logErrorNoReturnValue$vungle_ads_release();
            FileUtility.deleteContents(this.$jsPath);
            this.$downloadListener.invoke(12);
        }

        @Override // com.vungle.ads.internal.downloader.AssetDownloadListener
        public void onProgress(AssetDownloadListener.Progress progress, DownloadRequest downloadRequest) {
            Intrinsics.checkNotNullParameter(progress, "progress");
            Intrinsics.checkNotNullParameter(downloadRequest, "downloadRequest");
        }

        @Override // com.vungle.ads.internal.downloader.AssetDownloadListener
        public void onSuccess(File file, DownloadRequest downloadRequest) {
            Intrinsics.checkNotNullParameter(file, "file");
            Intrinsics.checkNotNullParameter(downloadRequest, "downloadRequest");
            if (this.$mraidJsFile.exists() && this.$mraidJsFile.length() > 0) {
                this.$downloadListener.invoke(10);
                return;
            }
            AnalyticsClient.INSTANCE.logError$vungle_ads_release(131, "Mraid js downloaded but write failure: " + this.$mraidJsFile.getAbsolutePath(), (24 & 4) != 0 ? null : null, (24 & 8) != 0 ? null : null, (24 & 16) != 0 ? null : null);
            FileUtility.deleteContents(this.$jsPath);
            this.$downloadListener.invoke(12);
        }
    }

    private MraidJsLoader() {
    }

    public final void downloadJs(PathProvider pathProvider, Downloader downloader, Function1<? super Integer, v> downloadListener) {
        Intrinsics.checkNotNullParameter(pathProvider, "pathProvider");
        Intrinsics.checkNotNullParameter(downloader, "downloader");
        Intrinsics.checkNotNullParameter(downloadListener, "downloadListener");
        ConfigManager configManager = ConfigManager.INSTANCE;
        String mraidEndpoint = configManager.getMraidEndpoint();
        if (mraidEndpoint == null || mraidEndpoint.length() == 0) {
            downloadListener.invoke(11);
            return;
        }
        File file = new File(pathProvider.getJsAssetDir(configManager.getMraidJsVersion()), "mraid.min.js");
        if (file.exists()) {
            downloadListener.invoke(13);
            return;
        }
        File jsDir = pathProvider.getJsDir();
        FileUtility.deleteContents(jsDir);
        downloader.download(new DownloadRequest(DownloadRequest.Priority.HIGH, mraidEndpoint + "/mraid.min.js", file.getAbsolutePath(), null, false, false, null, null, null, 448, null), new a(jsDir, downloadListener, file));
    }
}
