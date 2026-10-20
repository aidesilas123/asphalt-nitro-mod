###### Class com.ironsource.s6.b (com.ironsource.s6$b)
.class public final Lcom/ironsource/s6$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/j9$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/s6;->e()Lcom/ironsource/s6$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\u0008\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/ironsource/s6$b",
        "Lcom/ironsource/j9$a;",
        "Lcom/ironsource/u6;",
        "adData",
        "",
        "a",
        "",
        "reason",
        "b",
        "mediationsdk_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/s6;


# direct methods
.method constructor <init>(Lcom/ironsource/s6;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/s6$b;->a:Lcom/ironsource/s6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/s6$b;->a:Lcom/ironsource/s6;

    invoke-virtual {v0}, Lcom/ironsource/s6;->a()Lcom/ironsource/w6$a;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/ironsource/w6$a;->onNativeAdShown()V

    :cond_b
    return-void
.end method

.method public a(Lcom/ironsource/u6;)V
    .registers 6

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/s6$b;->a:Lcom/ironsource/s6;

    invoke-static {v0, p1}, Lcom/ironsource/s6;->a(Lcom/ironsource/s6;Lcom/ironsource/u6;)V

    iget-object v0, p0, Lcom/ironsource/s6$b;->a:Lcom/ironsource/s6;

    invoke-static {v0}, Lcom/ironsource/s6;->c(Lcom/ironsource/s6;)Lcom/ironsource/k6;

    move-result-object v0

    sget-object v1, Lcom/ironsource/gb;->l:Lcom/ironsource/gb$a;

    const-string v2, "loadAdSuccess"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ironsource/s6$b;->a:Lcom/ironsource/s6;

    invoke-static {v2}, Lcom/ironsource/s6;->a(Lcom/ironsource/s6;)Lcom/ironsource/j6;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/j6;->a()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "baseEventParams().data"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/ironsource/k6;->a(Lcom/ironsource/gb$a;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/ironsource/s6$b;->a:Lcom/ironsource/s6;

    invoke-virtual {v0}, Lcom/ironsource/s6;->a()Lcom/ironsource/w6$a;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-interface {v0, p1}, Lcom/ironsource/w6$a;->onNativeAdLoadSuccess(Lcom/ironsource/u6;)V

    :cond_34
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/s6$b;->a:Lcom/ironsource/s6;

    invoke-static {v0}, Lcom/ironsource/s6;->a(Lcom/ironsource/s6;)Lcom/ironsource/j6;

    move-result-object v0

    const-string v1, "callfailreason"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/s6$b;->a:Lcom/ironsource/s6;

    invoke-static {v1}, Lcom/ironsource/s6;->c(Lcom/ironsource/s6;)Lcom/ironsource/k6;

    move-result-object v1

    sget-object v2, Lcom/ironsource/gb;->g:Lcom/ironsource/gb$a;

    const-string v3, "loadAdFailed"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ironsource/j6;->a()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "eventParams.data"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v0}, Lcom/ironsource/k6;->a(Lcom/ironsource/gb$a;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/ironsource/s6$b;->a:Lcom/ironsource/s6;

    invoke-virtual {v0}, Lcom/ironsource/s6;->a()Lcom/ironsource/w6$a;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-interface {v0, p1}, Lcom/ironsource/w6$a;->onNativeAdLoadFailed(Ljava/lang/String;)V

    :cond_35
    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/s6$b;->a:Lcom/ironsource/s6;

    invoke-virtual {v0}, Lcom/ironsource/s6;->a()Lcom/ironsource/w6$a;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/ironsource/w6$a;->onNativeAdClicked()V

    :cond_b
    return-void
.end method
