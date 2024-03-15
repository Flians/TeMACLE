// Copyright (C) 2024, Gurobi Optimization, LLC
// All Rights Reserved
#ifndef _CPP_TEMPCONSTR_H_
#define _CPP_TEMPCONSTR_H_

class GRBTempConstr
{
  private:

    GRBQuadExpr expr;
    char        sense;

  public:

    GRBTempConstr() {}
    GRBTempConstr(const GRBTempConstr& tmp) : expr(tmp.expr),
                                              sense(tmp.sense) {}

    GRBTempConstr& operator=(const GRBTempConstr& tmp) {
      expr  = tmp.expr;
      sense = tmp.sense;
      return *this;
    }

    friend class GRBModel;
    friend class GRBCallback;
    friend GRBTempConstr operator<=(GRBQuadExpr x, GRBQuadExpr y);
    friend GRBTempConstr operator>=(GRBQuadExpr x, GRBQuadExpr y);
    friend GRBTempConstr operator==(GRBQuadExpr x, GRBQuadExpr y);
};
#endif
