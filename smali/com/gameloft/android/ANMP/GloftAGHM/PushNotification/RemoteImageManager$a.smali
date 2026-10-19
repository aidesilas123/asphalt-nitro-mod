###### Class com.gameloft.android.ANMP.GloftAGHM.PushNotification.RemoteImageManager.a (com.gameloft.android.ANMP.GloftAGHM.PushNotification.RemoteImageManager$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager$a;
.super Ljava/lang/Thread;
.source "RemoteImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->GetRemoteAsset(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->access$100(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->access$002(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->access$000()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_19
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->GetIrisService(Landroid/content/Context;)Ljava/lang/String;

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->access$100(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->access$002(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->access$000()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_fc

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    goto/16 :goto_fc

    :cond_39
    :try_start_39
    new-instance v0, Ljava/net/URL;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "Accept-Language"

    const-string v2, "en-US,en;q=0.8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "User-Agent"

    const-string v2, "Mozilla"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Referer"

    const-string v2, "google.com"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_87

    const/16 v2, 0x12e

    if-eq v1, v2, :cond_76

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_76

    const/16 v2, 0x12f

    if-ne v1, v2, :cond_87

    :cond_76
    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    :cond_87
    const-string v1, "ETag"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    iget-object v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager$a;->a:Landroid/content/Context;

    sget-object v3, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->i:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/PNImageHelper;->getEtagAssetFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_ec

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_ec

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_a8} :catch_f2

    if-nez v2, :cond_e0

    :try_start_aa
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager$a;->a:Landroid/content/Context;

    sget-object v3, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->i:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/PNImageHelper;->SaveBitmapImageToExternalStorage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_dc

    iget-object v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager$a;->a:Landroid/content/Context;

    sget-object v3, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->i:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/PNImageHelper;->saveAssetEtag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager$a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/PNImageHelper;->loadMap(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager$a;->a:Landroid/content/Context;

    sget-object v2, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->i:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/PNImageHelper;->addAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager$a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/PNImageHelper;->saveMap(Landroid/content/Context;)V

    :cond_dc
    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->access$302(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_df} :catch_fb
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_df} :catch_f2

    goto :goto_fb

    :cond_e0
    :try_start_e0
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager$a;->a:Landroid/content/Context;

    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/PNImageHelper;->LoadBitmapImageFromStorage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->access$302(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_fb

    :cond_ec
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->GetLocalAsset(Landroid/content/Context;)Z
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_f1} :catch_f2

    goto :goto_fb

    :catch_f2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->access$202(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->access$302(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :catch_fb
    :goto_fb
    return-void

    :cond_fc
    :goto_fc
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->access$202(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method
