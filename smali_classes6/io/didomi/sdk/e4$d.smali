###### Class io.didomi.drawable.C1751e4.d (io.didomi.sdk.e4$d)
.class final Lio/didomi/sdk/e4$d;
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

    iput-object p1, p0, Lio/didomi/sdk/e4$d;->a:Lio/didomi/sdk/e4;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/didomi/sdk/w8;
    .registers 8

    new-instance v6, Lio/didomi/sdk/w8;

    iget-object v0, p0, Lio/didomi/sdk/e4$d;->a:Lio/didomi/sdk/e4;

    invoke-static {v0}, Lio/didomi/sdk/e4;->b(Lio/didomi/sdk/e4;)Lio/didomi/sdk/z8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/z8;->j()I

    move-result v2

    iget-object v0, p0, Lio/didomi/sdk/e4$d;->a:Lio/didomi/sdk/e4;

    invoke-virtual {v0}, Lio/didomi/sdk/e4;->g()Landroid/graphics/Typeface;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/didomi/sdk/w8;-><init>(Landroid/graphics/drawable/GradientDrawable;ILandroid/graphics/Typeface;ILkotlin/jvm/internal/n;)V

    return-object v6
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/e4$d;->a()Lio/didomi/sdk/w8;

    move-result-object v0

    return-object v0
.end method
