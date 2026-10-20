###### Class com.json.i9 (com.ironsource.i9)
.class public final Lcom/ironsource/i9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/j9;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/i9$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0007B+\u0012\u0006\u0010\u001c\u001a\u00020\u001a\u0012\u0006\u0010\u001f\u001a\u00020\u001d\u0012\u0008\u0008\u0002\u0010\"\u001a\u00020 \u0012\u0008\u0008\u0002\u0010%\u001a\u00020#\u00a2\u0006\u0004\u0008/\u00100J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\r\u001a\u00020\u000cH\u0002J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u000cH\u0016J\u0008\u0010\u0014\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0017H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u000cH\u0016J\u0008\u0010\u000e\u001a\u00020\u0006H\u0016R\u0014\u0010\u001c\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u001bR\u0014\u0010\u001f\u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u001eR\u0014\u0010\"\u001a\u00020 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010!R\u0014\u0010%\u001a\u00020#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010$R\u001c\u0010(\u001a\n &*\u0004\u0018\u00010\u001a0\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010\u001bR$\u0010.\u001a\u0004\u0018\u00010)8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008\u0007\u0010,\"\u0004\u0008\u0007\u0010-\u00a8\u00061"
    }
    d2 = {
        "Lcom/ironsource/i9;",
        "Lcom/ironsource/j9;",
        "Landroid/app/Activity;",
        "activity",
        "Lcom/ironsource/sdk/controller/f$a;",
        "response",
        "",
        "a",
        "Lcom/ironsource/u6$b;",
        "report",
        "Lcom/ironsource/u6;",
        "adData",
        "Lorg/json/JSONObject;",
        "d",
        "b",
        "Lcom/ironsource/sdk/controller/k$b;",
        "c",
        "Lcom/ironsource/f9;",
        "msg",
        "loadParams",
        "destroy",
        "Lcom/ironsource/x6;",
        "viewHolder",
        "Lcom/ironsource/dd;",
        "viewVisibilityParams",
        "clickParams",
        "",
        "Ljava/lang/String;",
        "id",
        "Lcom/ironsource/sdk/controller/e;",
        "Lcom/ironsource/sdk/controller/e;",
        "controllerManager",
        "Lcom/ironsource/c7;",
        "Lcom/ironsource/c7;",
        "imageLoader",
        "Lcom/ironsource/g0;",
        "Lcom/ironsource/g0;",
        "adViewManagement",
        "kotlin.jvm.PlatformType",
        "e",
        "logTag",
        "Lcom/ironsource/j9$a;",
        "f",
        "Lcom/ironsource/j9$a;",
        "()Lcom/ironsource/j9$a;",
        "(Lcom/ironsource/j9$a;)V",
        "listener",
        "<init>",
        "(Ljava/lang/String;Lcom/ironsource/sdk/controller/e;Lcom/ironsource/c7;Lcom/ironsource/g0;)V",
        "mediationsdk_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/ironsource/sdk/controller/e;

.field private final c:Lcom/ironsource/c7;

.field private final d:Lcom/ironsource/g0;

.field private final e:Ljava/lang/String;

.field private f:Lcom/ironsource/j9$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ironsource/sdk/controller/e;Lcom/ironsource/c7;Lcom/ironsource/g0;)V
    .registers 6

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controllerManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageLoader"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adViewManagement"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/i9;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/i9;->b:Lcom/ironsource/sdk/controller/e;

    iput-object p3, p0, Lcom/ironsource/i9;->c:Lcom/ironsource/c7;

    iput-object p4, p0, Lcom/ironsource/i9;->d:Lcom/ironsource/g0;

    const-class p3, Lcom/ironsource/i9;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/ironsource/i9;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ironsource/i9;->m()Lcom/ironsource/sdk/controller/k$b;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/ironsource/sdk/controller/e;->a(Ljava/lang/String;Lcom/ironsource/sdk/controller/k$b;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/ironsource/sdk/controller/e;Lcom/ironsource/c7;Lcom/ironsource/g0;ILkotlin/jvm/internal/n;)V
    .registers 8

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_b

    new-instance p3, Lcom/ironsource/b7;

    const/4 p6, 0x1

    const/4 v0, 0x0

    invoke-direct {p3, v0, p6, v0}, Lcom/ironsource/b7;-><init>(Lcom/ironsource/h2;ILkotlin/jvm/internal/n;)V

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    invoke-static {}, Lcom/ironsource/g6;->a()Lcom/ironsource/g6;

    move-result-object p4

    const-string p5, "getInstance()"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/i9;-><init>(Ljava/lang/String;Lcom/ironsource/sdk/controller/e;Lcom/ironsource/c7;Lcom/ironsource/g0;)V

    return-void
.end method

.method private final b(Landroid/app/Activity;Lcom/ironsource/sdk/controller/f$a;)V
    .registers 6

    invoke-virtual {p2}, Lcom/ironsource/sdk/controller/f$a;->d()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/ironsource/i9;->a()Lcom/ironsource/j9$a;

    move-result-object p1

    if-eqz p1, :cond_11

    const-string p2, "failed to load native ad: missing params"

    invoke-interface {p1, p2}, Lcom/ironsource/j9$a;->a(Ljava/lang/String;)V

    :cond_11
    return-void

    :cond_12
    invoke-virtual {p2}, Lcom/ironsource/sdk/controller/f$a;->d()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "success"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual {p2}, Lcom/ironsource/sdk/controller/f$a;->d()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "reason"

    const-string v0, "failed to load native ad: unexpected error"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ironsource/i9;->a()Lcom/ironsource/j9$a;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/ironsource/j9$a;->a(Ljava/lang/String;)V

    :cond_37
    return-void

    :cond_38
    new-instance v0, Lcom/ironsource/u6$a;

    iget-object v1, p0, Lcom/ironsource/i9;->c:Lcom/ironsource/c7;

    iget-object v2, p0, Lcom/ironsource/i9;->d:Lcom/ironsource/g0;

    invoke-direct {v0, v1, v2}, Lcom/ironsource/u6$a;-><init>(Lcom/ironsource/c7;Lcom/ironsource/g0;)V

    invoke-virtual {p2}, Lcom/ironsource/sdk/controller/f$a;->d()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/u6$a;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/ironsource/u6$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/u6$b;->a()Lcom/ironsource/u6$b$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/u6$b$a;->h()Lcom/ironsource/u6;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/ironsource/i9;->i(Lcom/ironsource/u6$b;Lcom/ironsource/u6;)V

    return-void
.end method

.method private final c(Lcom/ironsource/f9;)V
    .registers 5

    invoke-virtual {p1}, Lcom/ironsource/f9;->f()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object p1, p0, Lcom/ironsource/i9;->e:Ljava/lang/String;

    const-string v0, "failed to handle click on native ad: missing params"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    invoke-virtual {p1}, Lcom/ironsource/f9;->f()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "success"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p1}, Lcom/ironsource/f9;->f()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "reason"

    const-string v1, "unexpected error"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/i9;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to handle click on native ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3e
    invoke-virtual {p0}, Lcom/ironsource/i9;->a()Lcom/ironsource/j9$a;

    move-result-object p1

    if-eqz p1, :cond_47

    invoke-interface {p1}, Lcom/ironsource/j9$a;->b()V

    :cond_47
    return-void
.end method

.method private static final d(Lcom/ironsource/i9;Landroid/app/Activity;Lcom/ironsource/sdk/controller/f$a;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/ironsource/i9;->b(Landroid/app/Activity;Lcom/ironsource/sdk/controller/f$a;)V

    return-void
.end method

.method private static final e(Lcom/ironsource/i9;Lcom/ironsource/f9;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ironsource/f9;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nativeAd.click"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0, p1}, Lcom/ironsource/i9;->c(Lcom/ironsource/f9;)V

    :cond_19
    return-void
.end method

.method private static final f(Lcom/ironsource/i9;Lcom/ironsource/sdk/controller/f$a;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/ironsource/i9;->h(Lcom/ironsource/sdk/controller/f$a;)V

    return-void
.end method

.method private static final g(Lcom/ironsource/i9;Lcom/ironsource/u6;Lcom/ironsource/sdk/controller/f$a;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/ironsource/i9;->j(Lcom/ironsource/u6;Lcom/ironsource/sdk/controller/f$a;)V

    return-void
.end method

.method private final h(Lcom/ironsource/sdk/controller/f$a;)V
    .registers 5

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/f$a;->d()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object p1, p0, Lcom/ironsource/i9;->e:Ljava/lang/String;

    const-string v0, "failed to handle click on native ad: missing params"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/f$a;->d()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "success"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/f$a;->d()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "reason"

    const-string v1, "unexpected error"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/i9;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to handle click on native ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3e
    invoke-virtual {p0}, Lcom/ironsource/i9;->a()Lcom/ironsource/j9$a;

    move-result-object p1

    if-eqz p1, :cond_47

    invoke-interface {p1}, Lcom/ironsource/j9$a;->b()V

    :cond_47
    return-void
.end method

.method private final i(Lcom/ironsource/u6$b;Lcom/ironsource/u6;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nativeAd.loadReport."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/i9;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ironsource/sdk/controller/f$c;

    iget-object v2, p0, Lcom/ironsource/i9;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ironsource/u6$b;->b()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v1, v2, v0, p1}, Lcom/ironsource/sdk/controller/f$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/ironsource/i9;->b:Lcom/ironsource/sdk/controller/e;

    new-instance v0, Lcom/ironsource/u0;

    invoke-direct {v0, p0, p2}, Lcom/ironsource/u0;-><init>(Lcom/ironsource/i9;Lcom/ironsource/u6;)V

    invoke-virtual {p1, v1, v0}, Lcom/ironsource/sdk/controller/e;->a(Lcom/ironsource/sdk/controller/f$c;Lcom/ironsource/sdk/controller/k$a;)V

    return-void
.end method

.method private final j(Lcom/ironsource/u6;Lcom/ironsource/sdk/controller/f$a;)V
    .registers 6

    invoke-virtual {p2}, Lcom/ironsource/sdk/controller/f$a;->d()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/ironsource/i9;->a()Lcom/ironsource/j9$a;

    move-result-object p1

    if-eqz p1, :cond_11

    const-string p2, "failed to load native ad: missing report params"

    invoke-interface {p1, p2}, Lcom/ironsource/j9$a;->a(Ljava/lang/String;)V

    :cond_11
    return-void

    :cond_12
    invoke-virtual {p2}, Lcom/ironsource/sdk/controller/f$a;->d()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "success"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual {p2}, Lcom/ironsource/sdk/controller/f$a;->d()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "reason"

    const-string v0, "failed to load native ad: unexpected error"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ironsource/i9;->a()Lcom/ironsource/j9$a;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/ironsource/j9$a;->a(Ljava/lang/String;)V

    :cond_37
    return-void

    :cond_38
    invoke-virtual {p0}, Lcom/ironsource/i9;->a()Lcom/ironsource/j9$a;

    move-result-object p2

    if-eqz p2, :cond_41

    invoke-interface {p2, p1}, Lcom/ironsource/j9$a;->a(Lcom/ironsource/u6;)V

    :cond_41
    return-void
.end method

.method private static final k(Lcom/ironsource/i9;Lcom/ironsource/sdk/controller/f$a;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/ironsource/i9;->l(Lcom/ironsource/sdk/controller/f$a;)V

    return-void
.end method

.method private final l(Lcom/ironsource/sdk/controller/f$a;)V
    .registers 5

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/f$a;->d()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object p1, p0, Lcom/ironsource/i9;->e:Ljava/lang/String;

    const-string v0, "failed to handle show on native ad: missing params"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/f$a;->d()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "success"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/f$a;->d()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "reason"

    const-string v1, "unexpected error"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/i9;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to handle show on native ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3e
    invoke-virtual {p0}, Lcom/ironsource/i9;->a()Lcom/ironsource/j9$a;

    move-result-object p1

    if-eqz p1, :cond_47

    invoke-interface {p1}, Lcom/ironsource/j9$a;->a()V

    :cond_47
    return-void
.end method

.method private final m()Lcom/ironsource/sdk/controller/k$b;
    .registers 2

    new-instance v0, Lcom/ironsource/b;

    invoke-direct {v0, p0}, Lcom/ironsource/b;-><init>(Lcom/ironsource/i9;)V

    return-object v0
.end method

.method private final n()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "command"

    const-string v2, "nativeAd.click"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "sdkCallback"

    const-string v2, "onReceivedMessage"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "JSONObject()\n\t\t\t.put(Con\u2026hods.ON_RECEIVED_MESSAGE)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic o(Lcom/ironsource/i9;Lcom/ironsource/f9;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/ironsource/i9;->e(Lcom/ironsource/i9;Lcom/ironsource/f9;)V

    return-void
.end method

.method public static synthetic p(Lcom/ironsource/i9;Landroid/app/Activity;Lcom/ironsource/sdk/controller/f$a;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/ironsource/i9;->d(Lcom/ironsource/i9;Landroid/app/Activity;Lcom/ironsource/sdk/controller/f$a;)V

    return-void
.end method

.method public static synthetic q(Lcom/ironsource/i9;Lcom/ironsource/u6;Lcom/ironsource/sdk/controller/f$a;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/ironsource/i9;->g(Lcom/ironsource/i9;Lcom/ironsource/u6;Lcom/ironsource/sdk/controller/f$a;)V

    return-void
.end method

.method public static synthetic r(Lcom/ironsource/i9;Lcom/ironsource/sdk/controller/f$a;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/ironsource/i9;->k(Lcom/ironsource/i9;Lcom/ironsource/sdk/controller/f$a;)V

    return-void
.end method

.method public static synthetic s(Lcom/ironsource/i9;Lcom/ironsource/sdk/controller/f$a;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/ironsource/i9;->f(Lcom/ironsource/i9;Lcom/ironsource/sdk/controller/f$a;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/ironsource/j9$a;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/i9;->f:Lcom/ironsource/j9$a;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .registers 6

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/i9;->b:Lcom/ironsource/sdk/controller/e;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/e;->a(Landroid/app/Activity;)V

    new-instance v0, Lcom/ironsource/sdk/controller/f$c;

    iget-object v1, p0, Lcom/ironsource/i9;->a:Ljava/lang/String;

    const-string v2, "nativeAd.load"

    invoke-direct {v0, v1, v2, p2}, Lcom/ironsource/sdk/controller/f$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object p2, p0, Lcom/ironsource/i9;->b:Lcom/ironsource/sdk/controller/e;

    new-instance v1, Lcom/ironsource/c;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/c;-><init>(Lcom/ironsource/i9;Landroid/app/Activity;)V

    invoke-virtual {p2, v0, v1}, Lcom/ironsource/sdk/controller/e;->a(Lcom/ironsource/sdk/controller/f$c;Lcom/ironsource/sdk/controller/k$a;)V

    return-void
.end method

.method public a(Lcom/ironsource/dd;)V
    .registers 5

    const-string v0, "viewVisibilityParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/sdk/controller/f$c;

    iget-object v1, p0, Lcom/ironsource/i9;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ironsource/dd;->g()Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "nativeAd.visibilityChanged"

    invoke-direct {v0, v1, v2, p1}, Lcom/ironsource/sdk/controller/f$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/ironsource/i9;->b:Lcom/ironsource/sdk/controller/e;

    new-instance v1, Lcom/ironsource/j2;

    invoke-direct {v1, p0}, Lcom/ironsource/j2;-><init>(Lcom/ironsource/i9;)V

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/sdk/controller/e;->a(Lcom/ironsource/sdk/controller/f$c;Lcom/ironsource/sdk/controller/k$a;)V

    return-void
.end method

.method public a(Lcom/ironsource/j9$a;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/i9;->f:Lcom/ironsource/j9$a;

    return-void
.end method

.method public a(Lcom/ironsource/x6;)V
    .registers 5

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/x6;->t()Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "assetViews"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0}, Lcom/ironsource/i9;->n()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "adViewClickCommand"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance v0, Lcom/ironsource/sdk/controller/f$c;

    iget-object v1, p0, Lcom/ironsource/i9;->a:Ljava/lang/String;

    const-string v2, "params"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "nativeAd.register"

    invoke-direct {v0, v1, v2, p1}, Lcom/ironsource/sdk/controller/f$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/ironsource/i9;->b:Lcom/ironsource/sdk/controller/e;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/sdk/controller/e;->a(Lcom/ironsource/sdk/controller/f$c;Lcom/ironsource/sdk/controller/k$a;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 5

    const-string v0, "clickParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/sdk/controller/f$c;

    iget-object v1, p0, Lcom/ironsource/i9;->a:Ljava/lang/String;

    const-string v2, "nativeAd.click"

    invoke-direct {v0, v1, v2, p1}, Lcom/ironsource/sdk/controller/f$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/ironsource/i9;->b:Lcom/ironsource/sdk/controller/e;

    new-instance v1, Lcom/ironsource/c3;

    invoke-direct {v1, p0}, Lcom/ironsource/c3;-><init>(Lcom/ironsource/i9;)V

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/sdk/controller/e;->a(Lcom/ironsource/sdk/controller/f$c;Lcom/ironsource/sdk/controller/k$a;)V

    return-void
.end method

.method public b()V
    .registers 5

    new-instance v0, Lcom/ironsource/sdk/controller/f$c;

    iget-object v1, p0, Lcom/ironsource/i9;->a:Ljava/lang/String;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "nativeAd.privacyClick"

    invoke-direct {v0, v1, v3, v2}, Lcom/ironsource/sdk/controller/f$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/ironsource/i9;->b:Lcom/ironsource/sdk/controller/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/ironsource/sdk/controller/e;->a(Lcom/ironsource/sdk/controller/f$c;Lcom/ironsource/sdk/controller/k$a;)V

    return-void
.end method

.method public destroy()V
    .registers 5

    new-instance v0, Lcom/ironsource/sdk/controller/f$c;

    iget-object v1, p0, Lcom/ironsource/i9;->a:Ljava/lang/String;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "nativeAd.destroy"

    invoke-direct {v0, v1, v3, v2}, Lcom/ironsource/sdk/controller/f$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/ironsource/i9;->b:Lcom/ironsource/sdk/controller/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/ironsource/sdk/controller/e;->a(Lcom/ironsource/sdk/controller/f$c;Lcom/ironsource/sdk/controller/k$a;)V

    return-void
.end method
