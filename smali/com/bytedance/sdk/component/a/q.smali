###### Class com.bytedance.sdk.component.a.q (com.bytedance.sdk.component.a.q)
.class public Lcom/bytedance/sdk/component/a/q;
.super Ljava/lang/Object;
.source "Js2JavaCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/a/q$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/a/q$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/bytedance/sdk/component/a/q$a;->a(Lcom/bytedance/sdk/component/a/q$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/q;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/component/a/q$a;->b(Lcom/bytedance/sdk/component/a/q$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/q;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/component/a/q$a;->c(Lcom/bytedance/sdk/component/a/q$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/q;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/component/a/q$a;->d(Lcom/bytedance/sdk/component/a/q$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/q;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/component/a/q$a;->e(Lcom/bytedance/sdk/component/a/q$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/q;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/component/a/q$a;->f(Lcom/bytedance/sdk/component/a/q$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/q;->g:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/component/a/q;->a:I

    invoke-static {p1}, Lcom/bytedance/sdk/component/a/q$a;->g(Lcom/bytedance/sdk/component/a/q$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/a/q;->h:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/a/q$a;Lcom/bytedance/sdk/component/a/q$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/a/q;-><init>(Lcom/bytedance/sdk/component/a/q$a;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/q;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/q;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/q;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/q;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/sdk/component/a/q;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/q;->g:Ljava/lang/String;

    iput p2, p0, Lcom/bytedance/sdk/component/a/q;->a:I

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/q;->h:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/component/a/q$a;
    .registers 2

    new-instance v0, Lcom/bytedance/sdk/component/a/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/a/q$a;-><init>(Lcom/bytedance/sdk/component/a/q$1;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Lcom/bytedance/sdk/component/a/q;
    .registers 3

    new-instance v0, Lcom/bytedance/sdk/component/a/q;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/a/q;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static a(Lcom/bytedance/sdk/component/a/q;)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_19

    iget v1, p0, Lcom/bytedance/sdk/component/a/q;->a:I

    if-ne v1, v0, :cond_19

    iget-object v1, p0, Lcom/bytedance/sdk/component/a/q;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object p0, p0, Lcom/bytedance/sdk/component/a/q;->e:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :cond_19
    :goto_19
    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "methodName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/a/q;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", params: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/a/q;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callbackId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/a/q;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/a/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/a/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.bytedance.sdk.component.a.q.AnonymousClass1 (com.bytedance.sdk.component.a.q$1)
.class synthetic Lcom/bytedance/sdk/component/a/q$1;
.super Ljava/lang/Object;
.source "Js2JavaCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.bytedance.sdk.component.a.q.a (com.bytedance.sdk.component.a.q$a)
.class public final Lcom/bytedance/sdk/component/a/q$a;
.super Ljava/lang/Object;
.source "Js2JavaCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/a/q$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/bytedance/sdk/component/a/q$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/a/q$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/a/q$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/component/a/q$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/a/q$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/component/a/q$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/a/q$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/component/a/q$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/a/q$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/component/a/q$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/a/q$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/component/a/q$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/a/q$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/component/a/q$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/a/q$a;->g:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/component/a/q$a;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/a/q$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/bytedance/sdk/component/a/q;
    .registers 3

    new-instance v0, Lcom/bytedance/sdk/component/a/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/component/a/q;-><init>(Lcom/bytedance/sdk/component/a/q$a;Lcom/bytedance/sdk/component/a/q$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/component/a/q$a;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/a/q$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/bytedance/sdk/component/a/q$a;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/a/q$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/bytedance/sdk/component/a/q$a;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/a/q$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/bytedance/sdk/component/a/q$a;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/a/q$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/bytedance/sdk/component/a/q$a;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/a/q$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/bytedance/sdk/component/a/q$a;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/a/q$a;->g:Ljava/lang/String;

    return-object p0
.end method
