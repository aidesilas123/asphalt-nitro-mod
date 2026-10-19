###### Class com.google.common.escape.Escapers (com.google.common.escape.Escapers)
.class public final Lcom/google/common/escape/Escapers;
.super Ljava/lang/Object;
.source "Escapers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/escape/Escapers$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/escape/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/escape/Escapers$a;

    invoke-direct {v0}, Lcom/google/common/escape/Escapers$a;-><init>()V

    sput-object v0, Lcom/google/common/escape/Escapers;->a:Lcom/google/common/escape/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([C)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    move-object p0, v0

    :goto_a
    return-object p0
.end method

.method public static builder()Lcom/google/common/escape/Escapers$b;
    .registers 2

    new-instance v0, Lcom/google/common/escape/Escapers$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/escape/Escapers$b;-><init>(Lcom/google/common/escape/Escapers$a;)V

    return-object v0
.end method

.method public static computeReplacement(Lcom/google/common/escape/c;C)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/escape/c;->b(C)[C

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/escape/Escapers;->a([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static computeReplacement(Lcom/google/common/escape/f;I)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/escape/f;->c(I)[C

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/escape/Escapers;->a([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static nullEscaper()Lcom/google/common/escape/d;
    .registers 1

    sget-object v0, Lcom/google/common/escape/Escapers;->a:Lcom/google/common/escape/d;

    return-object v0
.end method

###### Class com.google.common.escape.Escapers.a (com.google.common.escape.Escapers$a)
.class Lcom/google/common/escape/Escapers$a;
.super Lcom/google/common/escape/c;
.source "Escapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/escape/Escapers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/escape/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected b(C)[C
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

###### Class com.google.common.escape.Escapers.b (com.google.common.escape.Escapers$b)
.class public final Lcom/google/common/escape/Escapers$b;
.super Ljava/lang/Object;
.source "Escapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/escape/Escapers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:C

.field private c:C

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/common/escape/Escapers$b;->a:Ljava/util/Map;

    const/4 v0, 0x0

    iput-char v0, p0, Lcom/google/common/escape/Escapers$b;->b:C

    const v0, 0xffff

    iput-char v0, p0, Lcom/google/common/escape/Escapers$b;->c:C

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/escape/Escapers$b;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/escape/Escapers$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/escape/Escapers$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/common/escape/Escapers$b;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/common/escape/Escapers$b;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public b(CLjava/lang/String;)Lcom/google/common/escape/Escapers$b;
    .registers 4

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/escape/Escapers$b;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public c()Lcom/google/common/escape/d;
    .registers 5

    new-instance v0, Lcom/google/common/escape/Escapers$b$a;

    iget-object v1, p0, Lcom/google/common/escape/Escapers$b;->a:Ljava/util/Map;

    iget-char v2, p0, Lcom/google/common/escape/Escapers$b;->b:C

    iget-char v3, p0, Lcom/google/common/escape/Escapers$b;->c:C

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/common/escape/Escapers$b$a;-><init>(Lcom/google/common/escape/Escapers$b;Ljava/util/Map;CC)V

    return-object v0
.end method

.method public d(CC)Lcom/google/common/escape/Escapers$b;
    .registers 3

    iput-char p1, p0, Lcom/google/common/escape/Escapers$b;->b:C

    iput-char p2, p0, Lcom/google/common/escape/Escapers$b;->c:C

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/google/common/escape/Escapers$b;
    .registers 2

    iput-object p1, p0, Lcom/google/common/escape/Escapers$b;->d:Ljava/lang/String;

    return-object p0
.end method

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
