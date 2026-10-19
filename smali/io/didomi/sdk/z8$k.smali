###### Class io.didomi.drawable.C1965z8.k (io.didomi.sdk.z8$k)
.class final Lio/didomi/sdk/z8$k;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/z8;-><init>(Lio/didomi/sdk/H;Lio/didomi/sdk/s5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()Ljava/lang/Integer;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/z8;


# direct methods
.method constructor <init>(Lio/didomi/sdk/z8;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/z8$k;->a:Lio/didomi/sdk/z8;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/z8$k;->a:Lio/didomi/sdk/z8;

    invoke-virtual {v0}, Lio/didomi/sdk/z8;->t()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lio/didomi/sdk/z8$k;->a:Lio/didomi/sdk/z8;

    invoke-virtual {v0}, Lio/didomi/sdk/z8;->n()Lio/didomi/sdk/s5;

    move-result-object v0

    sget v1, Lio/didomi/sdk/R$color;->didomi_dark_logo:I

    invoke-virtual {v0, v1}, Lio/didomi/sdk/s5;->a(I)I

    move-result v0

    goto :goto_21

    :cond_15
    iget-object v0, p0, Lio/didomi/sdk/z8$k;->a:Lio/didomi/sdk/z8;

    invoke-virtual {v0}, Lio/didomi/sdk/z8;->n()Lio/didomi/sdk/s5;

    move-result-object v0

    sget v1, Lio/didomi/sdk/R$color;->didomi_light_logo:I

    invoke-virtual {v0, v1}, Lio/didomi/sdk/s5;->a(I)I

    move-result v0

    :goto_21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/z8$k;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
