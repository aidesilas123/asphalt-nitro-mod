###### Class io.didomi.sdk.e9.e (io.didomi.sdk.e9$e)
.class final Lio/didomi/sdk/e9$e;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/e9;-><init>(Landroidx/recyclerview/widget/RecyclerView;ZLio/didomi/sdk/z8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Landroid/graphics/Paint;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Landroid/graphics/Paint;",
        "a",
        "()Landroid/graphics/Paint;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic b:Lio/didomi/sdk/e9;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lio/didomi/sdk/e9;)V
    .registers 3

    iput-object p1, p0, Lio/didomi/sdk/e9$e;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lio/didomi/sdk/e9$e;->b:Lio/didomi/sdk/e9;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Paint;
    .registers 4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget-object v1, p0, Lio/didomi/sdk/e9$e;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lio/didomi/sdk/e9$e;->b:Lio/didomi/sdk/e9;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v2}, Lio/didomi/sdk/e9;->a(Lio/didomi/sdk/e9;)Lio/didomi/sdk/z8;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/z8;->t()Z

    move-result v2

    if-eqz v2, :cond_1a

    sget v2, Lio/didomi/sdk/R$color;->didomi_dark_divider:I

    goto :goto_1c

    :cond_1a
    sget v2, Lio/didomi/sdk/R$color;->didomi_light_divider:I

    :goto_1c
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/e9$e;->a()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method
