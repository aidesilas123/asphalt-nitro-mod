###### Class com.bytedance.sdk.openadsdk.l.g (com.bytedance.sdk.openadsdk.l.g)
.class public Lcom/bytedance/sdk/openadsdk/l/g;
.super Ljava/lang/Object;
.source "PlayableLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/l/g$a;
    }
.end annotation


# static fields
.field private static a:Lcom/bytedance/sdk/openadsdk/l/g$a;


# direct methods
.method public static a(Lcom/bytedance/sdk/openadsdk/l/g$a;)V
    .registers 1

    sput-object p0, Lcom/bytedance/sdk/openadsdk/l/g;->a:Lcom/bytedance/sdk/openadsdk/l/g$a;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/g;->a:Lcom/bytedance/sdk/openadsdk/l/g$a;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/l/g$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/g;->a:Lcom/bytedance/sdk/openadsdk/l/g$a;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p2, :cond_c

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    :cond_c
    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/g;->a:Lcom/bytedance/sdk/openadsdk/l/g$a;

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/l/g$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a()Z
    .registers 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/g;->a:Lcom/bytedance/sdk/openadsdk/l/g$a;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

###### Class com.bytedance.sdk.openadsdk.l.g.a (com.bytedance.sdk.openadsdk.l.g$a)
.class public interface abstract Lcom/bytedance/sdk/openadsdk/l/g$a;
.super Ljava/lang/Object;
.source "PlayableLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/l/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method
