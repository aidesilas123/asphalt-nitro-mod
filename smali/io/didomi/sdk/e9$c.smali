###### Class io.didomi.sdk.e9.c (io.didomi.sdk.e9$c)
.class final Lio/didomi/sdk/e9$c;
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
        "Lio/didomi/sdk/Z8;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lio/didomi/sdk/Z8;",
        "a",
        "()Lio/didomi/sdk/Z8;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/e9;

.field final synthetic b:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lio/didomi/sdk/e9;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    iput-object p1, p0, Lio/didomi/sdk/e9$c;->a:Lio/didomi/sdk/e9;

    iput-object p2, p0, Lio/didomi/sdk/e9$c;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/didomi/sdk/Z8;
    .registers 6

    new-instance v0, Lio/didomi/sdk/Z8;

    iget-object v1, p0, Lio/didomi/sdk/e9$c;->a:Lio/didomi/sdk/e9;

    invoke-static {v1}, Lio/didomi/sdk/e9;->a(Lio/didomi/sdk/e9;)Lio/didomi/sdk/z8;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/sdk/e9$c;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lio/didomi/sdk/e9$c;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lio/didomi/sdk/l2;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/didomi/sdk/l2;

    move-result-object v2

    const-string v3, "inflate(LayoutInflater.f\u2026xt), recyclerView, false)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lio/didomi/sdk/Z8;-><init>(Lio/didomi/sdk/z8;Lio/didomi/sdk/l2;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/e9$c;->a()Lio/didomi/sdk/Z8;

    move-result-object v0

    return-object v0
.end method
