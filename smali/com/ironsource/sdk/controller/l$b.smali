###### Class com.ironsource.sdk.controller.l.b (com.ironsource.sdk.controller.l$b)
.class public final Lcom/ironsource/sdk/controller/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/sdk/controller/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0019\u0008\u0016\u0012\u0006\u0010\n\u001a\u00020\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000b\u0010\u000cB\u0019\u0008\u0016\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000b\u0010\rJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\u0016\u0010\u0006\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0005R\u0016\u0010\t\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/ironsource/sdk/controller/l$b;",
        "Lcom/ironsource/sdk/controller/l;",
        "",
        "a",
        "",
        "I",
        "debugMode",
        "b",
        "Ljava/lang/String;",
        "script",
        "jsMethod",
        "<init>",
        "(Lcom/ironsource/sdk/controller/l;I)V",
        "(Ljava/lang/String;I)V",
        "mediationsdk_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/sdk/controller/l;I)V
    .registers 4

    const-string v0, "jsMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/ironsource/sdk/controller/l;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/l$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "script"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/sdk/controller/l$b;->b:Ljava/lang/String;

    iput p2, p0, Lcom/ironsource/sdk/controller/l$b;->a:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lcom/ironsource/sdk/controller/l$b;->a:I

    sget-object v1, Lcom/ironsource/h6$d;->b:Lcom/ironsource/h6$d;

    invoke-virtual {v1}, Lcom/ironsource/h6$d;->a()I

    move-result v1

    if-ne v0, v1, :cond_b

    goto :goto_1f

    :cond_b
    iget v0, p0, Lcom/ironsource/sdk/controller/l$b;->a:I

    sget-object v1, Lcom/ironsource/h6$d;->c:Lcom/ironsource/h6$d;

    invoke-virtual {v1}, Lcom/ironsource/h6$d;->a()I

    move-result v1

    if-lt v0, v1, :cond_22

    iget v0, p0, Lcom/ironsource/sdk/controller/l$b;->a:I

    sget-object v1, Lcom/ironsource/h6$d;->e:Lcom/ironsource/h6$d;

    invoke-virtual {v1}, Lcom/ironsource/h6$d;->a()I

    move-result v1

    if-gt v0, v1, :cond_22

    :goto_1f
    const-string v0, "console.log(\"JS exception: \" + JSON.stringify(e));"

    goto :goto_24

    :cond_22
    const-string v0, "empty"

    :goto_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/l$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}catch(e){"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder()\n        \u2026              .toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
