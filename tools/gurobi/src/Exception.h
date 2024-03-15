// Copyright (C) 2024, Gurobi Optimization, LLC
// All Rights Reserved
#ifndef _CPP_EXCEPTION_H_
#define _CPP_EXCEPTION_H_


class GRBException
{
  private:

    std::string msg;
    int error;

  public:

    GRBException(int errcode = 0);
    GRBException(const GRBException& exc) : msg(exc.msg), error(exc.error) {}
    GRBException(std::string errmsg, int errcode = 0);

    GRBException& operator=(const GRBException& exc) {
      msg = exc.msg;
      error = exc.error;
      return *this;
    }

    const std::string getMessage() const;
    int getErrorCode() const;
};
#endif
