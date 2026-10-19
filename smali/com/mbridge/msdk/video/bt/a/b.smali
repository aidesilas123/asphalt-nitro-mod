###### Class com.mbridge.msdk.video.bt.a.b (com.mbridge.msdk.video.bt.a.b)
.class public final Lcom/mbridge/msdk/video/bt/a/b;
.super Ljava/lang/Object;
.source "HandlerH5MessageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/video/bt/a/b$a;
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "handlerNativeResult"

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/a/b;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/video/bt/a/b;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/mbridge/msdk/video/bt/a/b;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/video/bt/a/b$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/a/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/mbridge/msdk/video/bt/a/b;
    .registers 1

    invoke-static {}, Lcom/mbridge/msdk/video/bt/a/b$a;->a()Lcom/mbridge/msdk/video/bt/a/b;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7

    const-string v0, "HandlerH5MessageManager"

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "message"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v1, 0x2

    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_25} :catch_2f
    .catchall {:try_start_2 .. :try_end_25} :catchall_26

    goto :goto_37

    :catchall_26
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    :catch_2f
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_37
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .registers 9

    const-string v0, "HandlerH5MessageManager"

    if-eqz p2, :cond_72

    :try_start_4
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_72

    :cond_f
    const-string v1, "uniqueIdentifier"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6a

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_6a

    :cond_28
    const-string v3, "parameters"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const/4 v4, 0x0

    if-eqz p2, :cond_47

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_47

    const-string v5, "type"

    invoke-virtual {p2, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    :cond_47
    iget p2, p0, Lcom/mbridge/msdk/video/bt/a/b;->a:I

    const-string v5, "receivedMessage"

    invoke-direct {p0, p2, v5, p1}, Lcom/mbridge/msdk/video/bt/a/b;->a(ILjava/lang/String;Ljava/lang/Object;)V

    const-string p2, "reporter"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5e

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/a/a;->a()Lcom/mbridge/msdk/mbsignalcommon/a/a;

    move-result-object p2

    invoke-virtual {p2, p1, v2, v3, v4}, Lcom/mbridge/msdk/mbsignalcommon/a/a;->a(Ljava/lang/Object;Ljava/lang/String;Lorg/json/JSONArray;I)V

    goto :goto_9d

    :cond_5e
    const-string p2, "MediaPlayer"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9d

    invoke-static {}, Lcom/mbridge/msdk/video/bt/a/a$a;->a()Lcom/mbridge/msdk/video/bt/a/a;

    goto :goto_9d

    :cond_6a
    :goto_6a
    iget p2, p0, Lcom/mbridge/msdk/video/bt/a/b;->b:I

    const-string v1, "module or method is null"

    invoke-direct {p0, p2, v1, p1}, Lcom/mbridge/msdk/video/bt/a/b;->a(ILjava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_72
    :goto_72
    iget p2, p0, Lcom/mbridge/msdk/video/bt/a/b;->b:I

    const-string v1, "params is null"

    invoke-direct {p0, p2, v1, p1}, Lcom/mbridge/msdk/video/bt/a/b;->a(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_79} :catch_8c
    .catchall {:try_start_4 .. :try_end_79} :catchall_7a

    return-void

    :catchall_7a
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mbridge/msdk/video/bt/a/b;->b:I

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2, p1}, Lcom/mbridge/msdk/video/bt/a/b;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_9d

    :catch_8c
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mbridge/msdk/video/bt/a/b;->b:I

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2, p1}, Lcom/mbridge/msdk/video/bt/a/b;->a(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_9d
    :goto_9d
    return-void
.end method

###### Class com.mbridge.msdk.video.bt.a.b.AnonymousClass1 (com.mbridge.msdk.video.bt.a.b$1)
.class final synthetic Lcom/mbridge/msdk/video/bt/a/b$1;
.super Ljava/lang/Object;
.source "HandlerH5MessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/video/bt/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.mbridge.msdk.video.bt.a.b.a (com.mbridge.msdk.video.bt.a.b$a)
.class final Lcom/mbridge/msdk/video/bt/a/b$a;
.super Ljava/lang/Object;
.source "HandlerH5MessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/video/bt/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/mbridge/msdk/video/bt/a/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/mbridge/msdk/video/bt/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/video/bt/a/b;-><init>(Lcom/mbridge/msdk/video/bt/a/b$1;)V

    sput-object v0, Lcom/mbridge/msdk/video/bt/a/b$a;->a:Lcom/mbridge/msdk/video/bt/a/b;

    return-void
.end method

.method static synthetic a()Lcom/mbridge/msdk/video/bt/a/b;
    .registers 1

    sget-object v0, Lcom/mbridge/msdk/video/bt/a/b$a;->a:Lcom/mbridge/msdk/video/bt/a/b;

    return-object v0
.end method
