###### Class com.json.vd (com.ironsource.vd)
.class Lcom/ironsource/vd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/q6;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/q6;Ljava/lang/String;IILjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/vd;->a:Lcom/ironsource/q6;

    iput-object p2, p0, Lcom/ironsource/vd;->b:Ljava/lang/String;

    iput p3, p0, Lcom/ironsource/vd;->c:I

    iput p4, p0, Lcom/ironsource/vd;->d:I

    iput-object p5, p0, Lcom/ironsource/vd;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/ironsource/vd;->c:I

    return v0
.end method

.method public b()Lcom/ironsource/q6;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/vd;->a:Lcom/ironsource/q6;

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/ironsource/vd;->d:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/vd;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/vd;->b:Ljava/lang/String;

    return-object v0
.end method
