###### Class io.didomi.drawable.s9 (io.didomi.sdk.s9)
.class public final synthetic Lio/didomi/sdk/s9;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lkotlin/jvm/b/l;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/b/l;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/s9;->a:Lkotlin/jvm/b/l;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/s9;->a:Lkotlin/jvm/b/l;

    invoke-static {v0, p1}, Lio/didomi/sdk/B6;->f(Lkotlin/jvm/b/l;Ljava/lang/Object;)V

    return-void
.end method
