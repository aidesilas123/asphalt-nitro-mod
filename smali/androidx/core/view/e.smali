###### Class androidx.core.view.e (androidx.core.view.e)
.class public final synthetic Landroidx/core/view/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkotlin/jvm/b/a;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/b/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/e;->a:Lkotlin/jvm/b/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroidx/core/view/e;->a:Lkotlin/jvm/b/a;

    invoke-static {v0}, Landroidx/core/view/ViewKt;->a(Lkotlin/jvm/b/a;)V

    return-void
.end method
