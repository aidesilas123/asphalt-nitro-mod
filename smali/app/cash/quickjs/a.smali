###### Class app.cash.quickjs.a (app.cash.quickjs.a)
.class final Lapp/cash/quickjs/a;
.super Ljava/lang/Object;
.source "QuickJsNativeLoader.java"


# direct methods
.method static a()V
    .registers 1

    const-string v0, "quickjs"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method
