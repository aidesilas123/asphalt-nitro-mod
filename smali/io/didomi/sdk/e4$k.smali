###### Class io.didomi.drawable.C1751e4.k (io.didomi.sdk.e4$k)
.class final Lio/didomi/sdk/e4$k;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/e4;-><init>(Lio/didomi/sdk/z8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lio/didomi/sdk/w8;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lio/didomi/sdk/w8;",
        "a",
        "()Lio/didomi/sdk/w8;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/e4;


# direct methods
.method constructor <init>(Lio/didomi/sdk/e4;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/e4$k;->a:Lio/didomi/sdk/e4;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/didomi/sdk/w8;
    .registers 5

    new-instance v0, Lio/didomi/sdk/w8;

    iget-object v1, p0, Lio/didomi/sdk/e4$k;->a:Lio/didomi/sdk/e4;

    invoke-static {v1}, Lio/didomi/sdk/e4;->b(Lio/didomi/sdk/e4;)Lio/didomi/sdk/z8;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/z8;->c()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/sdk/e4$k;->a:Lio/didomi/sdk/e4;

    invoke-static {v2}, Lio/didomi/sdk/e4;->b(Lio/didomi/sdk/e4;)Lio/didomi/sdk/z8;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/z8;->e()I

    move-result v2

    iget-object v3, p0, Lio/didomi/sdk/e4$k;->a:Lio/didomi/sdk/e4;

    invoke-static {v3}, Lio/didomi/sdk/e4;->a(Lio/didomi/sdk/e4;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/didomi/sdk/w8;-><init>(Landroid/graphics/drawable/GradientDrawable;ILandroid/graphics/Typeface;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/e4$k;->a()Lio/didomi/sdk/w8;

    move-result-object v0

    return-object v0
.end method
