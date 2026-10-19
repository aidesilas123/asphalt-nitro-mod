###### Class androidx.fragment.app.e (androidx.fragment.app.e)
.class public final synthetic Landroidx/fragment/app/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;


# instance fields
.field public final synthetic a:Lkotlin/jvm/b/p;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/b/p;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/e;->a:Lkotlin/jvm/b/p;

    return-void
.end method


# virtual methods
.method public final onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/e;->a:Lkotlin/jvm/b/p;

    invoke-static {v0, p1, p2}, Landroidx/fragment/app/FragmentKt;->a(Lkotlin/jvm/b/p;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
