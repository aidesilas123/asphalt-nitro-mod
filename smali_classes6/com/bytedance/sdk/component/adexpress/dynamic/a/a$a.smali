###### Class com.bytedance.sdk.component.adexpress.dynamic.a.a.RunnableC0102a (com.bytedance.sdk.component.adexpress.dynamic.a.a$a)
.class Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$a;
.super Ljava/lang/Object;
.source "DynamicRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;I)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$a;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$a;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$a;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    const-string v0, "DynamicRender"

    const-string v1, "Dynamic parse time out"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$a;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->e(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/g;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/f;

    if-eqz v0, :cond_19

    const/16 v0, 0x7f

    goto :goto_1b

    :cond_19
    const/16 v0, 0x75

    :goto_1b
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a$a;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;

    invoke-static {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;->d(Lcom/bytedance/sdk/component/adexpress/dynamic/a/a;)Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;->a(I)V

    :cond_24
    return-void
.end method
