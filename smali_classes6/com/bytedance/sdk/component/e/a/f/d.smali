###### Class com.bytedance.sdk.component.e.a.f.d (com.bytedance.sdk.component.e.a.f.d)
.class Lcom/bytedance/sdk/component/e/a/f/d;
.super Ljava/lang/Object;
.source "TrackInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/e/a/f/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/component/e/a/f/d;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/bytedance/sdk/component/e/a/f/d;->c:Z

    iput p4, p0, Lcom/bytedance/sdk/component/e/a/f/d;->d:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/f/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/component/e/a/f/d;->d:I

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/f/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/e/a/f/d;->c:Z

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/component/e/a/f/d;->d:I

    return v0
.end method
