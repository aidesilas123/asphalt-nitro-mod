###### Class com.ironsource.v.a (com.ironsource.v$a)
.class Lcom/ironsource/v$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ironsource/v$a;->a:I

    iput p2, p0, Lcom/ironsource/v$a;->b:I

    return-void
.end method


# virtual methods
.method a(Lcom/ironsource/v$b;)I
    .registers 3

    sget-object v0, Lcom/ironsource/v$b;->a:Lcom/ironsource/v$b;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget p1, p0, Lcom/ironsource/v$a;->a:I

    goto :goto_d

    :cond_b
    iget p1, p0, Lcom/ironsource/v$a;->b:I

    :goto_d
    return p1
.end method
