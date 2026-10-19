###### Class com.bytedance.sdk.openadsdk.core.g.b.a (com.bytedance.sdk.openadsdk.core.g.b.a)
.class public Lcom/bytedance/sdk/openadsdk/core/g/b/a;
.super Lcom/bytedance/sdk/openadsdk/core/g/b/c;
.source "VastAbsoluteProgressTracker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/g/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/core/g/b/c;",
        "Ljava/lang/Comparable<",
        "Lcom/bytedance/sdk/openadsdk/core/g/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:J


# direct methods
.method protected constructor <init>(JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/g/b/c$c;Ljava/lang/Boolean;)V
    .registers 6

    invoke-direct {p0, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/g/b/c;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/g/b/c$c;Ljava/lang/Boolean;)V

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/a;->a:J

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_9

    return v1

    :cond_9
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3b

    const/4 v0, 0x0

    :try_start_14
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v0, v2

    int-to-float v0, v0

    const/4 v2, 0x2

    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_3b

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float p0, p0, v1

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    :catchall_3b
    :cond_3b
    return v1
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/g/b/a;)I
    .registers 6

    if-eqz p1, :cond_13

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/a;->a:J

    iget-wide v2, p1, Lcom/bytedance/sdk/openadsdk/core/g/b/a;->a:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_b

    goto :goto_13

    :cond_b
    cmp-long p1, v0, v2

    if-gez p1, :cond_11

    const/4 p1, -0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1

    :cond_13
    :goto_13
    const/4 p1, 0x1

    return p1
.end method

.method public a()Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/g/b/c;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/a;->a:J

    const-string v3, "trackingMilliseconds"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method

.method public a(J)Z
    .registers 6

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/a;->a:J

    cmp-long v2, v0, p1

    if-gtz v2, :cond_e

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/g/b/c;->e()Z

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/g/b/a;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/g/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/g/b/a;)I

    move-result p1

    return p1
.end method

###### Class com.bytedance.sdk.openadsdk.core.g.b.a.C0134a (com.bytedance.sdk.openadsdk.core.g.b.a$a)
.class public Lcom/bytedance/sdk/openadsdk/core/g/b/a$a;
.super Ljava/lang/Object;
.source "VastAbsoluteProgressTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/g/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private c:Lcom/bytedance/sdk/openadsdk/core/g/b/c$c;

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/g/b/c$c;->a:Lcom/bytedance/sdk/openadsdk/core/g/b/c$c;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/a$a;->c:Lcom/bytedance/sdk/openadsdk/core/g/b/c$c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/a$a;->d:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/a$a;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/a$a;->b:J

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/core/g/b/a;
    .registers 8

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/g/b/a;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/a$a;->b:J

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/a$a;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/a$a;->c:Lcom/bytedance/sdk/openadsdk/core/g/b/c$c;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/a$a;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/g/b/a;-><init>(JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/g/b/c$c;Ljava/lang/Boolean;)V

    return-object v6
.end method
