###### Class com.google.common.escape.Escapers.b.a (com.google.common.escape.Escapers$b$a)
.class Lcom/google/common/escape/Escapers$b$a;
.super Lcom/google/common/escape/b;
.source "Escapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/escape/Escapers$b;->c()Lcom/google/common/escape/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final f:[C

.field final synthetic g:Lcom/google/common/escape/Escapers$b;


# direct methods
.method constructor <init>(Lcom/google/common/escape/Escapers$b;Ljava/util/Map;CC)V
    .registers 5

    iput-object p1, p0, Lcom/google/common/escape/Escapers$b$a;->g:Lcom/google/common/escape/Escapers$b;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/common/escape/b;-><init>(Ljava/util/Map;CC)V

    invoke-static {p1}, Lcom/google/common/escape/Escapers$b;->a(Lcom/google/common/escape/Escapers$b;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_14

    invoke-static {p1}, Lcom/google/common/escape/Escapers$b;->a(Lcom/google/common/escape/Escapers$b;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    iput-object p1, p0, Lcom/google/common/escape/Escapers$b$a;->f:[C

    return-void
.end method


# virtual methods
.method protected e(C)[C
    .registers 2

    iget-object p1, p0, Lcom/google/common/escape/Escapers$b$a;->f:[C

    return-object p1
.end method
