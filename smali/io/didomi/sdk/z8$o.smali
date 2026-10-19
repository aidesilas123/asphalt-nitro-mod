###### Class io.didomi.drawable.C1965z8.C1966o (io.didomi.sdk.z8$o)
.class final Lio/didomi/sdk/z8$o;
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
        "Landroid/graphics/drawable/GradientDrawable;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Landroid/graphics/drawable/GradientDrawable;",
        "a",
        "()Landroid/graphics/drawable/GradientDrawable;"
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

    iput-object p1, p0, Lio/didomi/sdk/z8$o;->a:Lio/didomi/sdk/z8;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/GradientDrawable;
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/z8$o;->a:Lio/didomi/sdk/z8;

    invoke-static {v0}, Lio/didomi/sdk/z8;->a(Lio/didomi/sdk/z8;)Lio/didomi/sdk/k$i$b;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$i$b;->b()Lio/didomi/sdk/k$i$b$a;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/sdk/z8$o;->a:Lio/didomi/sdk/z8;

    invoke-static {v2}, Lio/didomi/sdk/z8;->c(Lio/didomi/sdk/z8;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lio/didomi/sdk/z8;->a(Lio/didomi/sdk/z8;Lio/didomi/sdk/k$i$b$a;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/z8$o;->a()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    return-object v0
.end method
