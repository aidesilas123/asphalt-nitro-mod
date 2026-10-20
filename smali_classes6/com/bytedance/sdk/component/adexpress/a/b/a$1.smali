###### Class com.bytedance.sdk.component.adexpress.a.b.a.AnonymousClass1 (com.bytedance.sdk.component.adexpress.a.b.a$1)
.class final Lcom/bytedance/sdk/component/adexpress/a/b/a$1;
.super Lcom/bytedance/sdk/component/g/h;
.source "TTDynamic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/a/b/a;->a(Lcom/bytedance/sdk/component/adexpress/a/c/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/adexpress/a/c/b;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/a/c/b;)V
    .registers 3

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/a/b/a$1;->a:Lcom/bytedance/sdk/component/adexpress/a/c/b;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/g/h;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    sget-object v0, Lcom/bytedance/sdk/component/adexpress/a/b/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/a/b/d;->a()Lcom/bytedance/sdk/component/adexpress/a/b/d;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/a/b/a$1;->a:Lcom/bytedance/sdk/component/adexpress/a/c/b;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/a/b/d;->a(Lcom/bytedance/sdk/component/adexpress/a/c/b;)V

    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method
