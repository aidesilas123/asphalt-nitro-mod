###### Class com.bytedance.sdk.component.d.c.g (com.bytedance.sdk.component.d.c.g)
.class public Lcom/bytedance/sdk/component/d/c/g;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Lcom/bytedance/sdk/component/d/p;


# instance fields
.field private a:Lcom/bytedance/sdk/component/d/p;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/g;->a:Lcom/bytedance/sdk/component/d/p;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/d/p;->a(Ljava/lang/String;)V

    :cond_7
    return-void
.end method
