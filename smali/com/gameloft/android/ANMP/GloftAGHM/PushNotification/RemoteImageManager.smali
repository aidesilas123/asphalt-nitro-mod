###### Class com.gameloft.android.ANMP.GloftAGHM.PushNotification.RemoteImageManager (com.gameloft.android.ANMP.GloftAGHM.PushNotification.RemoteImageManager)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;
.super Ljava/lang/Object;
.source "RemoteImageManager.java"


# static fields
.field private static a:Landroid/graphics/Bitmap;

.field private static b:Ljava/lang/Boolean;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->b:Ljava/lang/Boolean;

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->c:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetAsset()Landroid/graphics/Bitmap;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private static GetAssetURL(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->GetIrisServiceFromPreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->GetIrisService(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_a
    if-eqz v0, :cond_28

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/assets/2361:59882:1.8.0a:android:googleplay/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    return-object p0
.end method

.method private static GetDatacenter()Ljava/lang/String;
    .registers 8

    const-string v0, "name"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/net/URL;

    const-string v3, "https://eve.gameloft.com:443/config/2361:59882:1.8.0a:android:googleplay/datacenters"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_86

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_2b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3a

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2b

    :cond_3a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3d} :catch_86

    :try_start_3d
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_4a} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4a} :catch_86

    goto :goto_86

    :catch_4b
    :try_start_4b
    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_55
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_86

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "preferred"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v7, "active"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_83

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_7f
    .catch Lorg/json/JSONException; {:try_start_4b .. :try_end_7f} :catch_86
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_7f} :catch_86

    if-eqz v4, :cond_83

    move-object v1, v5

    goto :goto_86

    :cond_83
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :catch_86
    :cond_86
    :goto_86
    return-object v1
.end method

.method private static GetEnvironment()Ljava/lang/String;
    .registers 6

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->e:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->e:Ljava/util/HashMap;

    :cond_b
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->e:Ljava/util/HashMap;

    const-string v1, "pandora"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    return-object v0

    :cond_1e
    :try_start_1e
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->GetDatacenter()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_ad

    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://eve.gameloft.com:443/config/2361:59882:1.8.0a:android:googleplay/datacenters/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/urls"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_aa

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :goto_60
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6f

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v5, 0xd

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_60

    :cond_6f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_72
    .catch Ljava/net/UnknownHostException; {:try_start_1e .. :try_end_72} :catch_ad
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_72} :catch_ad

    :try_start_72
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7f
    .catch Lorg/json/JSONException; {:try_start_72 .. :try_end_7f} :catch_80
    .catch Ljava/net/UnknownHostException; {:try_start_72 .. :try_end_7f} :catch_ad
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7f} :catch_ad

    goto :goto_9d

    :catch_80
    :try_start_80
    new-instance v4, Lorg/json/JSONArray;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_9b
    .catch Lorg/json/JSONException; {:try_start_80 .. :try_end_9b} :catch_9c
    .catch Ljava/net/UnknownHostException; {:try_start_80 .. :try_end_9b} :catch_ad
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_9b} :catch_ad

    goto :goto_9d

    :catch_9c
    nop

    :goto_9d
    if-eqz v0, :cond_aa

    :try_start_9f
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_aa

    sget-object v3, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->e:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_aa
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_ad
    .catch Ljava/net/UnknownHostException; {:try_start_9f .. :try_end_ad} :catch_ad
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_ad} :catch_ad

    :catch_ad
    :cond_ad
    return-object v0
.end method

.method public static GetIrisService(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->GetEnvironment()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4e

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4e

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/locate?service=asset"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "iris_service"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4e
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_4e} :catch_4e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4e} :catch_4e

    :catch_4e
    :cond_4e
    return-object v1
.end method

.method private static GetIrisServiceFromPreference(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    const-string v0, "iris_service"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method

.method public static GetLocalAsset(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->a:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->i:Ljava/lang/String;

    const-string v4, "raw"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_1f

    :try_start_14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    sput-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->a:Landroid/graphics/Bitmap;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_20

    goto :goto_22

    :catch_1f
    const/4 v2, 0x0

    :catch_20
    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->a:Landroid/graphics/Bitmap;

    :goto_22
    sget-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->a:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_29

    if-lez v2, :cond_29

    const/4 v1, 0x1

    :cond_29
    return v1
.end method

.method public static GetRemoteAsset(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->a:Landroid/graphics/Bitmap;

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->c:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->b:Ljava/lang/Boolean;

    new-instance v1, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager$a;

    invoke-direct {v1, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x0

    const/4 v1, 0x0

    :cond_13
    const/4 v2, 0x1

    add-int/2addr v1, v2

    sget-object v3, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->a:Landroid/graphics/Bitmap;

    if-nez v3, :cond_30

    sget-object v3, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->b:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_30

    :cond_22
    const-wide/16 v3, 0x1f4

    :try_start_24
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2c
    const/16 v3, 0x14

    if-le v1, v3, :cond_13

    :cond_30
    :goto_30
    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->c:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_37

    const/4 p0, 0x1

    :cond_37
    return p0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->GetAssetURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$202(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 1

    sput-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->b:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$302(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 1

    sput-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

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
