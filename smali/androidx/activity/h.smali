###### Class androidx.activity.h (androidx.activity.h)
.class public final synthetic Landroidx/activity/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Lkotlin/jvm/b/a;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/b/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/h;->a:Lkotlin/jvm/b/a;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .registers 2

    iget-object v0, p0, Landroidx/activity/h;->a:Lkotlin/jvm/b/a;

    invoke-static {v0}, Landroidx/activity/OnBackPressedDispatcher$Api33Impl;->a(Lkotlin/jvm/b/a;)V

    return-void
.end method
