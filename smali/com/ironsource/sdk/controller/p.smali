###### Class com.json.sdk.controller.p (com.ironsource.sdk.controller.p)
.class Lcom/ironsource/sdk/controller/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/ironsource/p4;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/ironsource/p4;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/sdk/controller/p;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/p;->b:Lcom/ironsource/p4;

    return-void
.end method

.method private a(Lcom/ironsource/q8;Lcom/ironsource/r8;)Lcom/ironsource/fa;
    .registers 4

    new-instance v0, Lcom/ironsource/sdk/controller/p$a;

    invoke-direct {v0, p0, p2, p1}, Lcom/ironsource/sdk/controller/p$a;-><init>(Lcom/ironsource/sdk/controller/p;Lcom/ironsource/r8;Lcom/ironsource/q8;)V

    return-object v0
.end method

.method private b(Lcom/ironsource/q8;J)Lorg/json/JSONObject;
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/q8;->e()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "result"

    invoke-virtual {p1, v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method private c(Lcom/ironsource/q8;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/q8;->e()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "errMsg"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method private d(Lcom/ironsource/q8;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/q8;->e()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "result"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method static synthetic e(Lcom/ironsource/sdk/controller/p;Lcom/ironsource/q8;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/p;->c(Lcom/ironsource/q8;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/ironsource/sdk/controller/p;Lcom/ironsource/q8;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/p;->d(Lcom/ironsource/q8;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private h(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ironsource/q6;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "filePath"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, "fileName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/ironsource/q6;

    invoke-static {p2, v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->buildAbsolutePathToDirInCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Lcom/ironsource/q6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_22
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Missing params for file"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method g(Lorg/json/JSONObject;Lcom/ironsource/p8;)V
    .registers 13

    new-instance v0, Lcom/ironsource/q8;

    invoke-direct {v0, p1}, Lcom/ironsource/q8;-><init>(Lorg/json/JSONObject;)V

    new-instance p1, Lcom/ironsource/r8;

    invoke-direct {p1, p2}, Lcom/ironsource/r8;-><init>(Lcom/ironsource/p8;)V

    :try_start_a
    invoke-virtual {v0}, Lcom/ironsource/q8;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/ironsource/q8;->c()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/p;->a:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/ironsource/sdk/controller/p;->h(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ironsource/q6;

    move-result-object v4

    iget-object v2, p0, Lcom/ironsource/sdk/controller/p;->a:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->ensurePathSafety(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v3, :sswitch_data_da

    goto :goto_66

    :sswitch_2b
    const-string v3, "getFiles"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_66

    const/4 v2, 0x3

    goto :goto_66

    :sswitch_35
    const-string v3, "deleteFile"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_66

    const/4 v2, 0x1

    goto :goto_66

    :sswitch_3f
    const-string v3, "updateAttributesOfFile"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_66

    const/4 v2, 0x5

    goto :goto_66

    :sswitch_49
    const-string v3, "getTotalSizeOfFiles"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_66

    const/4 v2, 0x4

    goto :goto_66

    :sswitch_53
    const-string v3, "deleteFolder"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_66

    const/4 v2, 0x2

    goto :goto_66

    :sswitch_5d
    const-string v3, "saveFile"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_66

    const/4 v2, 0x0

    :cond_66
    :goto_66
    if-eqz v2, :cond_b1

    if-eq v2, v9, :cond_a3

    if-eq v2, v8, :cond_99

    if-eq v2, v7, :cond_92

    if-eq v2, v6, :cond_87

    if-eq v2, v5, :cond_73

    goto :goto_d9

    :cond_73
    const-string p2, "attributesToUpdate"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    iget-object v1, p0, Lcom/ironsource/sdk/controller/p;->b:Lcom/ironsource/p4;

    invoke-virtual {v1, v4, p2}, Lcom/ironsource/p4;->a(Lcom/ironsource/q6;Lorg/json/JSONObject;)V

    invoke-virtual {v4}, Lcom/ironsource/q6;->a()Lorg/json/JSONObject;

    move-result-object p2

    :goto_82
    invoke-direct {p0, v0, p2}, Lcom/ironsource/sdk/controller/p;->d(Lcom/ironsource/q8;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_ad

    :cond_87
    iget-object p2, p0, Lcom/ironsource/sdk/controller/p;->b:Lcom/ironsource/p4;

    invoke-virtual {p2, v4}, Lcom/ironsource/p4;->d(Lcom/ironsource/q6;)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/ironsource/sdk/controller/p;->b(Lcom/ironsource/q8;J)Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_ad

    :cond_92
    iget-object p2, p0, Lcom/ironsource/sdk/controller/p;->b:Lcom/ironsource/p4;

    invoke-virtual {p2, v4}, Lcom/ironsource/p4;->c(Lcom/ironsource/q6;)Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_82

    :cond_99
    iget-object p2, p0, Lcom/ironsource/sdk/controller/p;->b:Lcom/ironsource/p4;

    invoke-virtual {p2, v4}, Lcom/ironsource/p4;->b(Lcom/ironsource/q6;)V

    invoke-virtual {v4}, Lcom/ironsource/q6;->a()Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_82

    :cond_a3
    iget-object p2, p0, Lcom/ironsource/sdk/controller/p;->b:Lcom/ironsource/p4;

    invoke-virtual {p2, v4}, Lcom/ironsource/p4;->a(Lcom/ironsource/q6;)V

    invoke-virtual {v4}, Lcom/ironsource/q6;->a()Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_82

    :goto_ad
    invoke-virtual {p1, v0, p2}, Lcom/ironsource/r8;->b(Lcom/ironsource/q8;Lorg/json/JSONObject;)V

    goto :goto_d9

    :cond_b1
    const-string p2, "fileUrl"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p2, "connectionTimeout"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string p2, "readTimeout"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/p;->a(Lcom/ironsource/q8;Lcom/ironsource/r8;)Lcom/ironsource/fa;

    move-result-object v8

    iget-object v3, p0, Lcom/ironsource/sdk/controller/p;->b:Lcom/ironsource/p4;

    invoke-virtual/range {v3 .. v8}, Lcom/ironsource/p4;->a(Lcom/ironsource/q6;Ljava/lang/String;IILcom/ironsource/fa;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_cc} :catch_cd

    goto :goto_d9

    :catch_cd
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/ironsource/sdk/controller/p;->c(Lcom/ironsource/q8;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/ironsource/r8;->a(Lcom/ironsource/q8;Lorg/json/JSONObject;)V

    :goto_d9
    return-void

    :sswitch_data_da
    .sparse-switch
        -0x7b8fdb67 -> :sswitch_5d
        -0x43c59e07 -> :sswitch_53
        -0x12f60ecf -> :sswitch_49
        0x200a7713 -> :sswitch_3f
        0x692721c7 -> :sswitch_35
        0x746c60c1 -> :sswitch_2b
    .end sparse-switch
.end method

###### Class com.ironsource.sdk.controller.p.a (com.ironsource.sdk.controller.p$a)
.class Lcom/ironsource/sdk/controller/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/fa;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/p;->a(Lcom/ironsource/q8;Lcom/ironsource/r8;)Lcom/ironsource/fa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/r8;

.field final synthetic b:Lcom/ironsource/q8;

.field final synthetic c:Lcom/ironsource/sdk/controller/p;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/p;Lcom/ironsource/r8;Lcom/ironsource/q8;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/sdk/controller/p$a;->c:Lcom/ironsource/sdk/controller/p;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/p$a;->a:Lcom/ironsource/r8;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/p$a;->b:Lcom/ironsource/q8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/q6;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/p$a;->a:Lcom/ironsource/r8;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/p$a;->b:Lcom/ironsource/q8;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/p$a;->c:Lcom/ironsource/sdk/controller/p;

    invoke-virtual {p1}, Lcom/ironsource/q6;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/ironsource/sdk/controller/p;->f(Lcom/ironsource/sdk/controller/p;Lcom/ironsource/q8;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/r8;->b(Lcom/ironsource/q8;Lorg/json/JSONObject;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_16
    return-void
.end method

.method public a(Lcom/ironsource/q6;Lcom/ironsource/i6;)V
    .registers 5

    :try_start_0
    iget-object p1, p0, Lcom/ironsource/sdk/controller/p$a;->a:Lcom/ironsource/r8;

    iget-object v0, p0, Lcom/ironsource/sdk/controller/p$a;->b:Lcom/ironsource/q8;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/p$a;->c:Lcom/ironsource/sdk/controller/p;

    invoke-virtual {p2}, Lcom/ironsource/i6;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v0, p2}, Lcom/ironsource/sdk/controller/p;->e(Lcom/ironsource/sdk/controller/p;Lcom/ironsource/q8;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/ironsource/r8;->a(Lcom/ironsource/q8;Lorg/json/JSONObject;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_16
    return-void
.end method
