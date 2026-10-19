###### Class com.json.na (com.ironsource.na)
.class public Lcom/ironsource/na;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/na$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Lcom/ironsource/oa;

.field private e:I

.field private f:I


# direct methods
.method private constructor <init>(ZZZLcom/ironsource/oa;II)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/ironsource/na;->a:Z

    iput-boolean p2, p0, Lcom/ironsource/na;->b:Z

    iput-boolean p3, p0, Lcom/ironsource/na;->c:Z

    iput-object p4, p0, Lcom/ironsource/na;->d:Lcom/ironsource/oa;

    iput p5, p0, Lcom/ironsource/na;->e:I

    iput p6, p0, Lcom/ironsource/na;->f:I

    return-void
.end method

.method synthetic constructor <init>(ZZZLcom/ironsource/oa;IILcom/ironsource/na$a;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/ironsource/na;-><init>(ZZZLcom/ironsource/oa;II)V

    return-void
.end method


# virtual methods
.method public a()Lcom/ironsource/oa;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/na;->d:Lcom/ironsource/oa;

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/ironsource/na;->e:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/ironsource/na;->f:I

    return v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/na;->b:Z

    return v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/na;->a:Z

    return v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/na;->c:Z

    return v0
.end method

###### Class com.ironsource.na.a (com.ironsource.na$a)
.class synthetic Lcom/ironsource/na$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/na;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.ironsource.na.b (com.ironsource.na$b)
.class public Lcom/ironsource/na$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/na;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Lcom/ironsource/oa;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/na$b;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/na$b;->b:Z

    iput-boolean v0, p0, Lcom/ironsource/na$b;->c:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ironsource/na$b;->d:Lcom/ironsource/oa;

    iput v0, p0, Lcom/ironsource/na$b;->e:I

    iput v0, p0, Lcom/ironsource/na$b;->f:I

    return-void
.end method


# virtual methods
.method public a(Z)Lcom/ironsource/na$b;
    .registers 2

    iput-boolean p1, p0, Lcom/ironsource/na$b;->a:Z

    return-object p0
.end method

.method public a(ZI)Lcom/ironsource/na$b;
    .registers 3

    iput-boolean p1, p0, Lcom/ironsource/na$b;->c:Z

    iput p2, p0, Lcom/ironsource/na$b;->f:I

    return-object p0
.end method

.method public a(ZLcom/ironsource/oa;I)Lcom/ironsource/na$b;
    .registers 4

    iput-boolean p1, p0, Lcom/ironsource/na$b;->b:Z

    if-nez p2, :cond_6

    sget-object p2, Lcom/ironsource/oa;->b:Lcom/ironsource/oa;

    :cond_6
    iput-object p2, p0, Lcom/ironsource/na$b;->d:Lcom/ironsource/oa;

    iput p3, p0, Lcom/ironsource/na$b;->e:I

    return-object p0
.end method

.method public a()Lcom/ironsource/na;
    .registers 10

    new-instance v8, Lcom/ironsource/na;

    iget-boolean v1, p0, Lcom/ironsource/na$b;->a:Z

    iget-boolean v2, p0, Lcom/ironsource/na$b;->b:Z

    iget-boolean v3, p0, Lcom/ironsource/na$b;->c:Z

    iget-object v4, p0, Lcom/ironsource/na$b;->d:Lcom/ironsource/oa;

    iget v5, p0, Lcom/ironsource/na$b;->e:I

    iget v6, p0, Lcom/ironsource/na$b;->f:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/ironsource/na;-><init>(ZZZLcom/ironsource/oa;IILcom/ironsource/na$a;)V

    return-object v8
.end method
