###### Class com.ironsource.s6.c (com.ironsource.s6$c)
.class public final Lcom/ironsource/s6$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/x6$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/s6;->f()Lcom/ironsource/s6$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/s6$c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/ironsource/s6$c",
        "Lcom/ironsource/x6$a;",
        "Lcom/ironsource/x6$b;",
        "viewName",
        "",
        "a",
        "Lcom/ironsource/dd;",
        "viewVisibilityParams",
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

    iput-object p1, p0, Lcom/ironsource/s6$c;->a:Lcom/ironsource/s6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/dd;)V
    .registers 3

    const-string v0, "viewVisibilityParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/s6$c;->a:Lcom/ironsource/s6;

    invoke-static {v0}, Lcom/ironsource/s6;->b(Lcom/ironsource/s6;)Lcom/ironsource/j9;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ironsource/j9;->a(Lcom/ironsource/dd;)V

    return-void
.end method

.method public a(Lcom/ironsource/x6$b;)V
    .registers 5

    const-string v0, "viewName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/ironsource/s6$c$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    iget-object p1, p0, Lcom/ironsource/s6$c;->a:Lcom/ironsource/s6;

    invoke-static {p1}, Lcom/ironsource/s6;->b(Lcom/ironsource/s6;)Lcom/ironsource/j9;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/j9;->b()V

    goto :goto_35

    :cond_1a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/x6$b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/s6$c;->a:Lcom/ironsource/s6;

    invoke-static {v0}, Lcom/ironsource/s6;->b(Lcom/ironsource/s6;)Lcom/ironsource/j9;

    move-result-object v0

    const-string v1, "clickParams"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/ironsource/j9;->a(Lorg/json/JSONObject;)V

    :goto_35
    return-void
.end method
