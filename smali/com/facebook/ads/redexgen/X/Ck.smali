###### Class com.facebook.ads.redexgen.X.C0944Ck (com.facebook.ads.redexgen.X.Ck)
.class public final Lcom/facebook/ads/redexgen/X/Ck;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/WI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SampleReader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Cj;
    }
.end annotation


# static fields
.field public static A0I:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:Lcom/facebook/ads/redexgen/X/Cj;

.field public A07:Lcom/facebook/ads/redexgen/X/Cj;

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:[B

.field public final A0C:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Hb;",
            ">;"
        }
    .end annotation
.end field

.field public final A0D:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Hc;",
            ">;"
        }
    .end annotation
.end field

.field public final A0E:Lcom/facebook/ads/redexgen/X/Bm;

.field public final A0F:Lcom/facebook/ads/redexgen/X/Hi;

.field public final A0G:Z

.field public final A0H:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "F0jWKjQTCy62z5RMZ8LXaJxAHVXVw03"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "jefijzmMiLSAGWVfBYlCHQnNu7WiK65"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "5NKy3uod9nHosUme2DvPYxtYVEy"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OBCuuRHFU9olC8zTnYpCIYDmocSOdWsL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "GchpYIdYbHeAJ5Ou"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "h9yGOulo4c92iX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0WO8HWLEfGPVrZyS"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YTVxkuYMC8IrkJuZM8HCcFhUbHlAsN8p"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ck;->A0I:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Bm;ZZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ck;->A0E:Lcom/facebook/ads/redexgen/X/Bm;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Ck;->A0G:Z

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Ck;->A0H:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ck;->A0D:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ck;->A0C:Landroid/util/SparseArray;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cj;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Cj;-><init>(Lcom/facebook/ads/redexgen/X/Ci;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ck;->A06:Lcom/facebook/ads/redexgen/X/Cj;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cj;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Cj;-><init>(Lcom/facebook/ads/redexgen/X/Ci;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ck;->A07:Lcom/facebook/ads/redexgen/X/Cj;

    const/16 v0, 0x80

    new-array v2, v0, [B

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Ck;->A0B:[B

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hi;

    invoke-direct {v0, v2, v1, v1}, Lcom/facebook/ads/redexgen/X/Hi;-><init>([BII)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ck;->A01()V

    return-void
.end method

.method private A00(I)V
    .registers 10

    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Ck;->A0A:Z

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Ck;->A02:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ck;->A04:J

    sub-long/2addr v2, v0

    long-to-int v5, v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ck;->A0E:Lcom/facebook/ads/redexgen/X/Bm;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Ck;->A05:J

    const/4 v7, 0x0

    move v6, p1

    invoke-interface/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Bm;->AEs(JIIILcom/facebook/ads/redexgen/X/Bl;)V

    return-void
.end method


# virtual methods
.method public final A01()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ck;->A08:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ck;->A09:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ck;->A07:Lcom/facebook/ads/redexgen/X/Cj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cj;->A02()V

    return-void
.end method

.method public final A02(JI)V
    .registers 10

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ck;->A01:I

    const/16 v0, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v0, :cond_16

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ck;->A0H:Z

    if-eqz v0, :cond_4d

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ck;->A07:Lcom/facebook/ads/redexgen/X/Cj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ck;->A06:Lcom/facebook/ads/redexgen/X/Cj;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Cj;->A01(Lcom/facebook/ads/redexgen/X/Cj;Lcom/facebook/ads/redexgen/X/Cj;)Z

    move-result v0

    if-eqz v0, :cond_4d

    :cond_16
    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Ck;->A09:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ck;->A0I:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_30

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_30
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ck;->A0I:[Ljava/lang/String;

    const-string v1, "rg9RD6QhDdRr"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v5, :cond_41

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ck;->A02:J

    sub-long/2addr p1, v0

    long-to-int v0, p1

    add-int/2addr p3, v0

    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/Ck;->A00(I)V

    :cond_41
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ck;->A02:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ck;->A04:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ck;->A03:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ck;->A05:J

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Ck;->A0A:Z

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Ck;->A09:Z

    :cond_4d
    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Ck;->A0A:Z

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ck;->A01:I

    const/4 v0, 0x5

    if-eq v1, v0, :cond_62

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ck;->A0G:Z

    if-eqz v0, :cond_63

    if-ne v1, v4, :cond_63

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ck;->A07:Lcom/facebook/ads/redexgen/X/Cj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cj;->A05()Z

    move-result v0

    if-eqz v0, :cond_63

    :cond_62
    const/4 v3, 0x1

    :cond_63
    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Ck;->A0A:Z

    return-void
.end method

.method public final A03(JIJ)V
    .registers 9

    iput p3, p0, Lcom/facebook/ads/redexgen/X/Ck;->A01:I

    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/Ck;->A03:J

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Ck;->A02:J

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ck;->A0G:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    if-eq p3, v2, :cond_19

    :cond_d
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ck;->A0H:Z

    if-eqz v0, :cond_29

    const/4 v0, 0x5

    if-eq p3, v0, :cond_19

    if-eq p3, v2, :cond_19

    const/4 v0, 0x2

    if-ne p3, v0, :cond_29

    :cond_19
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ck;->A06:Lcom/facebook/ads/redexgen/X/Cj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ck;->A07:Lcom/facebook/ads/redexgen/X/Cj;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ck;->A06:Lcom/facebook/ads/redexgen/X/Cj;

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Ck;->A07:Lcom/facebook/ads/redexgen/X/Cj;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Cj;->A02()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ck;->A00:I

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Ck;->A08:Z

    :cond_29
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/Hb;)V
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ck;->A0C:Landroid/util/SparseArray;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Hb;->A00:I

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Hc;)V
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ck;->A0D:Landroid/util/SparseArray;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Hc;->A05:I

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public final A06([BII)V
    .registers 26

    move/from16 v5, p3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Ck;->A08:Z

    if-nez v1, :cond_9

    return-void

    :cond_9
    move/from16 v4, p2

    sub-int/2addr v5, v4

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0B:[B

    array-length v3, v8

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Ck;->A00:I

    add-int v1, v2, v5

    const/4 v7, 0x2

    if-ge v3, v1, :cond_43

    add-int/2addr v2, v5

    mul-int/lit8 v6, v2, 0x2

    sget-object v3, Lcom/facebook/ads/redexgen/X/Ck;->A0I:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v2, v3, v1

    const/4 v1, 0x1

    aget-object v1, v3, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v2, v1, :cond_31

    :cond_2b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_31
    sget-object v3, Lcom/facebook/ads/redexgen/X/Ck;->A0I:[Ljava/lang/String;

    const-string v2, "I85ez55UKF4vR6ktlfwpENhqyCssmG4"

    const/4 v1, 0x0

    aput-object v2, v3, v1

    const-string v2, "5okjmZY1XRxLGurOWaApunPnJUdAZAM"

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v8, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0B:[B

    :cond_43
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0B:[B

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Ck;->A00:I

    move-object/from16 v3, p1

    invoke-static {v3, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, v0, Lcom/facebook/ads/redexgen/X/Ck;->A00:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/facebook/ads/redexgen/X/Ck;->A00:I

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0B:[B

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2, v4}, Lcom/facebook/ads/redexgen/X/Hi;->A08([BII)V

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/Hi;->A0B(I)Z

    move-result v1

    if-nez v1, :cond_64

    return-void

    :cond_64
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hi;->A06()V

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v1, v7}, Lcom/facebook/ads/redexgen/X/Hi;->A05(I)I

    move-result v9

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Lcom/facebook/ads/redexgen/X/Hi;->A07(I)V

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hi;->A09()Z

    move-result v1

    if-nez v1, :cond_7e

    return-void

    :cond_7e
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hi;->A04()I

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hi;->A09()Z

    move-result v1

    if-nez v1, :cond_8c

    return-void

    :cond_8c
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hi;->A04()I

    move-result v10

    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0H:Z

    if-nez v1, :cond_9e

    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/Ck;->A08:Z

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ck;->A07:Lcom/facebook/ads/redexgen/X/Cj;

    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/Cj;->A03(I)V

    return-void

    :cond_9e
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hi;->A09()Z

    move-result v1

    if-nez v1, :cond_a7

    return-void

    :cond_a7
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hi;->A04()I

    move-result v12

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0C:Landroid/util/SparseArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_b8

    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/Ck;->A08:Z

    return-void

    :cond_b8
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0C:Landroid/util/SparseArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Hb;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0D:Landroid/util/SparseArray;

    iget v2, v1, Lcom/facebook/ads/redexgen/X/Hb;->A01:I

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/ads/redexgen/X/Hc;

    iget-boolean v2, v8, Lcom/facebook/ads/redexgen/X/Hc;->A09:Z

    if-eqz v2, :cond_f0

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v2, v7}, Lcom/facebook/ads/redexgen/X/Hi;->A0B(I)Z

    move-result v2

    if-nez v2, :cond_d7

    return-void

    :cond_d7
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    sget-object v3, Lcom/facebook/ads/redexgen/X/Ck;->A0I:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v2, 0x12

    if-eq v3, v2, :cond_2b

    sget-object v4, Lcom/facebook/ads/redexgen/X/Ck;->A0I:[Ljava/lang/String;

    const-string v3, "BDS58Myee4yHYxTG8mu"

    const/4 v2, 0x2

    aput-object v3, v4, v2

    invoke-virtual {v5, v7}, Lcom/facebook/ads/redexgen/X/Hi;->A07(I)V

    :cond_f0
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    iget v2, v8, Lcom/facebook/ads/redexgen/X/Hc;->A01:I

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Hi;->A0B(I)Z

    move-result v2

    if-nez v2, :cond_fb

    return-void

    :cond_fb
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    iget v2, v8, Lcom/facebook/ads/redexgen/X/Hc;->A01:I

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Hi;->A05(I)I

    move-result v11

    iget-boolean v3, v8, Lcom/facebook/ads/redexgen/X/Hc;->A08:Z

    const/4 v2, 0x1

    if-nez v3, :cond_12d

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Hi;->A0B(I)Z

    move-result v3

    if-nez v3, :cond_114

    return-void

    :cond_114
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Hi;->A0A()Z

    move-result v13

    if-eqz v13, :cond_145

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Hi;->A0B(I)Z

    move-result v3

    if-nez v3, :cond_125

    return-void

    :cond_125
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Hi;->A0A()Z

    move-result v15

    const/4 v14, 0x1

    goto :goto_145

    :cond_12d
    sget-object v4, Lcom/facebook/ads/redexgen/X/Ck;->A0I:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v3, 0x7

    if-eq v4, v3, :cond_15b

    sget-object v5, Lcom/facebook/ads/redexgen/X/Ck;->A0I:[Ljava/lang/String;

    const-string v4, "E8pM94a91AlwBow9"

    const/4 v3, 0x6

    aput-object v4, v5, v3

    const-string v4, "HP5p1w370WRNIPZM"

    const/4 v3, 0x4

    aput-object v4, v5, v3

    :cond_145
    :goto_145
    iget v3, v0, Lcom/facebook/ads/redexgen/X/Ck;->A01:I

    if-ne v3, v6, :cond_158

    const/16 v16, 0x1

    :goto_14b
    const/16 v17, 0x0

    if-eqz v16, :cond_169

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Hi;->A09()Z

    move-result v3

    if-nez v3, :cond_163

    return-void

    :cond_158
    const/16 v16, 0x0

    goto :goto_14b

    :cond_15b
    sget-object v5, Lcom/facebook/ads/redexgen/X/Ck;->A0I:[Ljava/lang/String;

    const-string v4, "F8tLSSZzAzz"

    const/4 v3, 0x5

    aput-object v4, v5, v3

    goto :goto_145

    :cond_163
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Hi;->A04()I

    move-result v17

    :cond_169
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget v3, v8, Lcom/facebook/ads/redexgen/X/Hc;->A04:I

    if-nez v3, :cond_19e

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    iget v2, v8, Lcom/facebook/ads/redexgen/X/Hc;->A03:I

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Hi;->A0B(I)Z

    move-result v2

    if-nez v2, :cond_180

    return-void

    :cond_180
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    iget v2, v8, Lcom/facebook/ads/redexgen/X/Hc;->A03:I

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Hi;->A05(I)I

    move-result v18

    iget-boolean v1, v1, Lcom/facebook/ads/redexgen/X/Hb;->A02:Z

    if-eqz v1, :cond_1ca

    if-nez v13, :cond_1ca

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hi;->A09()Z

    move-result v1

    if-nez v1, :cond_197

    return-void

    :cond_197
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hi;->A03()I

    move-result v19

    goto :goto_1ca

    :cond_19e
    iget v3, v8, Lcom/facebook/ads/redexgen/X/Hc;->A04:I

    if-ne v3, v2, :cond_1ca

    iget-boolean v2, v8, Lcom/facebook/ads/redexgen/X/Hc;->A07:Z

    if-nez v2, :cond_1ca

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hi;->A09()Z

    move-result v2

    if-nez v2, :cond_1af

    return-void

    :cond_1af
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hi;->A03()I

    move-result v20

    iget-boolean v1, v1, Lcom/facebook/ads/redexgen/X/Hb;->A02:Z

    if-eqz v1, :cond_1ca

    if-nez v13, :cond_1ca

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hi;->A09()Z

    move-result v1

    if-nez v1, :cond_1c4

    return-void

    :cond_1c4
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ck;->A0F:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hi;->A03()I

    move-result v21

    :cond_1ca
    :goto_1ca
    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/Ck;->A07:Lcom/facebook/ads/redexgen/X/Cj;

    invoke-virtual/range {v7 .. v21}, Lcom/facebook/ads/redexgen/X/Cj;->A04(Lcom/facebook/ads/redexgen/X/Hc;IIIIZZZZIIIII)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Ck;->A08:Z

    return-void
.end method

.method public final A07()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ck;->A0H:Z

    return v0
.end method
