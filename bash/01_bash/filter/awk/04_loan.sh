#!/bin/awk

BEGIN{}
{
    loan=let $6-15000
}
END{print "Loan deposited: "$loan}