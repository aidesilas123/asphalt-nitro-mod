###### Class androidx.webkit.JavaScriptReplyProxy (androidx.webkit.JavaScriptReplyProxy)
.class public abstract Landroidx/webkit/JavaScriptReplyProxy;
.super Ljava/lang/Object;
.source "JavaScriptReplyProxy.java"


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract postMessage(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
