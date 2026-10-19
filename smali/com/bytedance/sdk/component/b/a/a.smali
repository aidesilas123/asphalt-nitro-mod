###### Class com.bytedance.sdk.component.b.a.a (com.bytedance.sdk.component.b.a.a)
.class public final Lcom/bytedance/sdk/component/b/a/a;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/b/a/a$a;
    }
.end annotation


# instance fields
.field public final a:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/b/a/a$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean p1, p1, Lcom/bytedance/sdk/component/b/a/a$a;->a:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/b/a/a;->a:Z

    return-void
.end method

###### Class com.bytedance.sdk.component.b.a.a.C0111a (com.bytedance.sdk.component.b.a.a$a)
.class public final Lcom/bytedance/sdk/component/b/a/a$a;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/component/b/a/a$a;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/b/a/a$a;->a:Z

    return-object p0
.end method

.method public b()Lcom/bytedance/sdk/component/b/a/a;
    .registers 2

    new-instance v0, Lcom/bytedance/sdk/component/b/a/a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/b/a/a;-><init>(Lcom/bytedance/sdk/component/b/a/a$a;)V

    return-object v0
.end method
