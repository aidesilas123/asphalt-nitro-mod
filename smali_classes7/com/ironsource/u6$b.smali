###### Class com.json.ISNNativeAdData.b (com.ironsource.u6$b)
.class public final Lcom/ironsource/u6$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/u6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/u6$b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0005B\u000f\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\u0008\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0005\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/ironsource/u6$b;",
        "",
        "Lorg/json/JSONObject;",
        "b",
        "Lcom/ironsource/u6$b$a;",
        "a",
        "Lcom/ironsource/u6$b$a;",
        "()Lcom/ironsource/u6$b$a;",
        "data",
        "<init>",
        "(Lcom/ironsource/u6$b$a;)V",
        "mediationsdk_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/u6$b$a;


# direct methods
.method public constructor <init>(Lcom/ironsource/u6$b$a;)V
    .registers 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/u6$b;->a:Lcom/ironsource/u6$b$a;

    return-void
.end method

.method private static final b(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "success"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private static final c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p2}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "success"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_21

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1c

    const-string p2, "unknown reason"

    :cond_1c
    const-string v1, "reason"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_21
    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/u6$b$a;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/u6$b;->a:Lcom/ironsource/u6$b$a;

    return-object v0
.end method

.method public final b()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/ironsource/u6$b;->a:Lcom/ironsource/u6$b$a;

    invoke-virtual {v1}, Lcom/ironsource/u6$b$a;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    const-string v1, "title"

    invoke-static {v0, v1}, Lcom/ironsource/u6$b;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_12
    iget-object v1, p0, Lcom/ironsource/u6$b;->a:Lcom/ironsource/u6$b$a;

    invoke-virtual {v1}, Lcom/ironsource/u6$b$a;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    const-string v1, "advertiser"

    invoke-static {v0, v1}, Lcom/ironsource/u6$b;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_1f
    iget-object v1, p0, Lcom/ironsource/u6$b;->a:Lcom/ironsource/u6$b$a;

    invoke-virtual {v1}, Lcom/ironsource/u6$b$a;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    const-string v1, "body"

    invoke-static {v0, v1}, Lcom/ironsource/u6$b;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_2c
    iget-object v1, p0, Lcom/ironsource/u6$b;->a:Lcom/ironsource/u6$b$a;

    invoke-virtual {v1}, Lcom/ironsource/u6$b$a;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_39

    const-string v1, "cta"

    invoke-static {v0, v1}, Lcom/ironsource/u6$b;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_39
    iget-object v1, p0, Lcom/ironsource/u6$b;->a:Lcom/ironsource/u6$b$a;

    invoke-virtual {v1}, Lcom/ironsource/u6$b$a;->l()Lkotlin/Result;

    move-result-object v1

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Lkotlin/Result;->c()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "icon"

    invoke-static {v0, v2, v1}, Lcom/ironsource/u6$b;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4a
    iget-object v1, p0, Lcom/ironsource/u6$b;->a:Lcom/ironsource/u6$b$a;

    invoke-virtual {v1}, Lcom/ironsource/u6$b$a;->m()Lkotlin/Result;

    move-result-object v1

    if-eqz v1, :cond_5b

    invoke-virtual {v1}, Lkotlin/Result;->c()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "media"

    invoke-static {v0, v2, v1}, Lcom/ironsource/u6$b;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5b
    return-object v0
.end method
